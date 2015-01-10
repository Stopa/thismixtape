var elementsLayoutID, // layout ID for the elements page
    elementLayoutID, // layout ID for the element page
    elementsParentID, // ID of the page parent of the years being created
    elementDefinitionID, // ID of the element definition being used
    yearPages = {} // year pages. (key, value) = (year, page ID)
    ;


function transferPagesToElements(requestURL) {
  var url = requestURL || '/admin/api/pages';

  $.getJSON(url, function(pagesData, textStatus, pagesxhr) {
    var linkHeader = pagesxhr.getResponseHeader('Link'),
        linkHeaderParts = linkHeader.split(','),
        linkHeaderObject = {};

    linkHeaderParts.forEach(function(linkHeaderPart, linkHeaderIndex, linkHeaders) {
      var key = linkHeaderPart.match(/rel\=\"([^\=]+)\"/)[1],
          value = linkHeaderPart.match(/\<([^\>]+)\>/);

      linkHeaderObject[key] = value;
    });

    transferPage(pagesData[0], pagesData.slice(1), linkHeaderObject.next);
  });
}

function transferPage(page, pagesArray, nextLink) {
  if (!page.root && page.path.indexOf('elements') == -1) { // do NOTHING with root page & with any page that is child of 'elements'
    var pageIsSecondLevel = page.path.match(/\//); // second-level pages are years, not mixtapes

    if (pageIsSecondLevel === null) {
      // create new elements page
      $.ajax({
        type: 'post',
        url: '/admin/api/pages',
        data: JSON.stringify({
          title: page.title,
          slug: page.slug,
          layout_id: elementsLayoutID,
          parent_id: elementsParentID,
          hidden: page.hidden,
          publishing: page.publishing,
          isprivate: page.isprivate
        }),
        contentType: 'application/json',
        dataType: 'json',
        success: function(response) {
          yearPages[response.slug] = {
            page_id: response.id,
            node_id: response.node.id
          };

          nextPage(pagesArray, nextLink);
        }
      });
    } else {
      if (page.layout.title == 'B-sides') {
      //TODO: there is also b-sides
       // if layout is b sides then move the child
        $.ajax({
          type: 'put',
          url: page.node.url+'/move',
          dataType: 'json',
          contentType: 'application/json',
          data: JSON.stringify({
            parent_id: yearPages[page.path.split('/')[0]].node_id
          }),
          success: function() {
            nextPage(pagesArray, nextLink);
          }
        })

      } else {
        // create new element

        var contentXHRs = [],
            contentsObject = {};

        $.getJSON(page.contents_url, {}, function(pageContentsData) {

          pageContentsData.forEach(function(contentElement, contentElementIndex, contentElements) {
            var contentXHR = $.getJSON(contentElement.text.url, function(contentTextData) {
              contentsObject[contentElement.name] = contentTextData.body;
            });

            contentXHRs.push(contentXHR);
          });

          $.when.apply($, contentXHRs).done(function() {
          $.ajax({
            type: 'post',
            url: '/admin/api/elements',
            dataType: 'json',
            contentType: 'application/json',
            data: JSON.stringify({
              element_definition_id: elementDefinitionID,
              page_id: yearPages[page.path.split('/')[0]].page_id,
              title: page.title,
              values: {
                'track_path': contentsObject['player'],
                'artist_links': contentsObject['artist-links'],
                'body': contentsObject['body'],
                'background_image': contentsObject['photo'],
                'opengraph_image': contentsObject['og']
              }
            }),
            success: function() {
              nextPage(pagesArray, nextLink);
            }
          });
        });
        });
      }
    }
  } else {
    nextPage(pagesArray, nextLink);
  }
}

function nextPage(pagesArray, nextLink) {
  console.log(pagesArray.length)
  if (pagesArray.length > 0) {
    transferPage(pagesArray[0], pagesArray.slice(1));
  } else {
    if (nextLink) {
      transferPagesToElements(nextLink);
    }
  }
}

function createElementDefinition() {
  return $.ajax({
    type: 'post',
    url: '/admin/api/element_definitions',
    data: JSON.stringify({
      title: 'Mixtape',
      fields: [
        {
          key: 'track_path',
          title: 'Track path',
          data_type: 'string',
          position: 0
        },
        {
          key: 'artist_links',
          title: 'Artist links',
          data_type: 'text',
          position: 1
        },
        {
          key: 'body',
          title: 'Body',
          data_type: 'text',
          position: 2
        },
        {
          key: 'background_image',
          title: 'Background image',
          data_type: 'image',
          position: 3
        },
        {
          key: 'opengraph_image',
          title: 'OpenGraph image',
          data_type: 'image',
          position: 4
        }
      ]
    }),
    dataType: 'json',
    contentType: 'application/json',
    success: function(data) {
      elementDefinitionID = data.id;
    }
  });
}

function getRootPage() {
  return $.getJSON('/admin/api/pages', function(data) {
    elementsParentID = data[0].id
  });
}

function getLayoutIDs() {
  return $.getJSON('/admin/api/layouts', function(data) {
    data.forEach(function(layout, index, layouts) {
      if (layout['content_type'] == 'elements') {
        elementsLayoutID = layout.id;
      } else if (layout['content_type'] == 'element') {
        elementLayoutID = layout.id;
      }
    });
  });
}

function run() {
  $.when(getRootPage(), getLayoutIDs()).done(function() {transferPagesToElements();});
}