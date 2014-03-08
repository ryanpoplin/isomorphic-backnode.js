###
NumberModel = require 'models/number-model'
NumberView = require 'views/number-view'
NumberController = require 'controllers/number-controller'
###

IndexView = require 'views/index-view'

class Application extends Backbone.Marionette.Application
  initialize: =>
    @on 'initialize:after', @startHistory

    # model = new NumberModel
    # view = new NumberView model: model
    view = new IndexView
   	# new NumberController model: model, view: view

    @addRegions mainRegion: '#main'
    @mainRegion.show view

    @start()

  startHistory: (options) => Backbone.history.start()

module.exports = Application