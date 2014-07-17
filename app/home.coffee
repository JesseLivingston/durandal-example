define (require)->
  ###
  app = require 'durandal/app'

  ko = require 'knockout'

  {
    name: ko.observable(),
    sayHello: ->
      app.showMessage('Hello ' + this.name() + '! Nice to meet you.', 'Greetings')
  }
  ###
  router = require 'plugins/router'
  {
    router: router,
    activate: ->
      router.map([{
        route: '', title: 'Home', moduleId: 'home', nav: true
      }]).buildNavigationModel()

      # router.activate()
      return
  }
