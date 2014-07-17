define (require)->

  router = require 'plugins/router'
  {
    router: router,
    activate: ->
      router.map([{
        route: '', title: 'Home', moduleId: 'home', nav: true
      }, {
        route: 'rainier', title: 'Mount Rainier', moduleId: 'rainier', nav: true
      }]).buildNavigationModel()
      #return
      router.activate()
  }
