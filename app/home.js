// Generated by CoffeeScript 1.7.1
define(function(require) {
  var app, ko;
  app = require('durandal/app');
  ko = require('knockout');
  return {
    name: ko.observable(),
    sayHello: function() {
      return app.showMessage('Hello ' + this.name() + '! Nice to meet you.', 'Greeting');
    }
  };
});
