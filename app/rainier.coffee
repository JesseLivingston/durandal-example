define (require)->
  http = require 'plugins/http'
  ko   = require 'knockout'

  url = 'http://api.flickr.com/services/feeds/photos_public.gne'

  qs = {
    tags: 'mount rainer',
    tagmode: 'any',
    format: 'json'
  }

  {
    images: ko.observableArray([]),
    activate: ->
      that = this
      return if this.images().length > 0

      http.jsonp(url, qs, 'jsoncallback').then (response)->
        that.images response.items
  }
