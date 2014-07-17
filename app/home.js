// Generated by CoffeeScript 1.7.1
define(function(require) {

  /*
  app = require 'durandal/app'
  
  ko = require 'knockout'
  
  {
    name: ko.observable(),
    sayHello: ->
      app.showMessage('Hello ' + this.name() + '! Nice to meet you.', 'Greetings')
  }
   */
  var router;
  router = require('plugins/router');
  return {
    router: router,
    activate: function() {
      router.map([
        {
          route: '',
          title: 'Home',
          moduleId: 'home',
          nav: true
        }
      ]).buildNavigationModel();
    }
  };
});
