module.exports = class CoffeeModel extends Backbone.Model 
	defaults: 
		name: 'Poplinr'
	initialize: ->
		console.log 'CoffeeModel Init...'
		return