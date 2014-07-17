
  requirejs.config({
    paths: {
        'text':         '../lib/require/text',
        'durandal':     '../lib/durandal/js',
        'plugins':      '../lib/durandal/js/plugins',
        'transitions':  '../lib/durandal/js/transitions',
        'knockout':     '../lib/knockout/knockout-3.1.0',
        'bootstrap':    '../lib/bootstrap/js/bootstrap'
        'jquery':       '../lib/jquery/jquery-1.9.1'
    }
  });

  define((require)->
    system = require 'durandal/system'
    app = require 'durandal/app'

    system.debug true

    app.title = 'Durandal Starter Kit'

    app.configurePlugins {
      router: true,
      dialog: true
    }

    app.start().then ->
      app.setRoot 'shell'
      console.log 'fuck......'
      return

    return
  )
