CoffeeModel = require 'models/coffee-model'
CoffeeView = require 'views/coffee-view'
CoffeeController = require 'controllers/coffee-controller'

class Application extends Backbone.Marionette.Application
  initialize: =>
    @on 'initialize:after', @startHistory

    model = new CoffeeModel
    view = new CoffeeView model: model
    # new CoffeeController model: model, view: view

    @addRegions mainRegion: '#main'
    @mainRegion.show view

    @start()

  startHistory: (options) => Backbone.history.start()

module.exports = Application