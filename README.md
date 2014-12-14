thismixtape
===========

Source code for the This Mixtape Is So (thismixtape.com) Voog site. This Mixtape Is So collects the mixtapes filled with Estonian DJ's favourite tracks from last year at the start of each year.

Dependencies: grunt, bower, voogkit.

Configure the .voog file as shown in .voog.example; it's recommended to test big changes on a test account (tmisdev.voog.com) before commiting them to thismixtape.com.

After changing CSS and/or JS, remember to run the default grunt task to uglify, prefix and concatenate all assets. New CSS and JS files should be added to stylesheets and javascripts arrays respectively in Gruntfile.js.
