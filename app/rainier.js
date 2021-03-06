// Generated by CoffeeScript 1.7.1
define(function(require) {
  var http, ko, qs, url;
  http = require('plugins/http');
  ko = require('knockout');
  url = 'http://api.flickr.com/services/feeds/photos_public.gne';
  qs = {
    tags: 'mount rainer',
    tagmode: 'any',
    format: 'json'
  };
  return {
    images: ko.observableArray([]),
    activate: function() {
      var that;
      that = this;
      if (this.images().length > 0) {
        return;
      }
      return http.jsonp(url, qs, 'jsoncallback').then(function(response) {
        return that.images(response.items);
      });
    }
  };
});
