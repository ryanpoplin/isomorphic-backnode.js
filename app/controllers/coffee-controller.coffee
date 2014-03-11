module.exports = class CoffeeController extends Marionette.Controller 
	initialize: (options) ->
		@model = options.model
		@view = options.view
		# @listenTo @view, 'coffee:event', @coffeeEvent
		console.log 'Fuck!...'
		return