module.exports = function(grunt) {

  var javascripts = [
    'javascripts/jquery.js', 
    'javascripts/2014-scripts.js', 
    'javascripts/berniecode-animator.js', 
    'javascripts/soundmanager2.js', 
    'javascripts/360player.js'
  ];

  var stylesheets = [
    'stylesheets/2014-style.css',
    'stylesheets/360player.css',
    'stylesheets/360-custom.css',
    'stylesheets/grain.css',
    'stylesheets/spinner.css',
    'stylesheets/2014-mobile.css'
  ];
  
  grunt.initConfig({
    pkg: grunt.file.readJSON('package.json'),
    bowercopy: {
      js: {
        files: {
          'javascripts/jquery.js': 'jquery/dist/jquery.min.js'
        }
      }
    },
    autoprefixer: {
      css: {
        src: "stylesheets/thismixtape.css"
      }
    },
    cssmin: {
      css: {
        files: {
          "stylesheets/thismixtape.css": stylesheets
        }
      }
    },
    uglify: {
      js: {
        files: {
          "javascripts/thismixtape.js": javascripts
        }
      }
    }
    // TODO - voog push via grunt-exec
  });

  grunt.loadNpmTasks('grunt-bowercopy');
  grunt.loadNpmTasks('grunt-autoprefixer');
  grunt.loadNpmTasks('grunt-contrib-cssmin');
  grunt.loadNpmTasks('grunt-contrib-jshint');
  grunt.loadNpmTasks('grunt-contrib-uglify');

  grunt.registerTask('default', ['bowercopy', 'uglify', 'cssmin', 'autoprefixer']);

}
