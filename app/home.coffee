define (require) ->
  app = require('durandal/app')
  ko  = require('knockout')

  {
    name: ko.observable(),
    sayHello: ->
      app.showMessage('Hello ' + this.name() + '! Nice to meet you.', 'Greeting')
  }
