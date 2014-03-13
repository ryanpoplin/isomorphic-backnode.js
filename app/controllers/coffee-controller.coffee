module.exports = class CoffeeController extends Marionette.Controller 
	initialize: (options) ->
		console.log 'CoffeeController Init...'
		@model = options.model
		@view = options.views
		console.log @model
		console.log @view
		return