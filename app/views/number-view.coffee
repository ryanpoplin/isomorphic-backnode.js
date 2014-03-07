module.exports = class NumberView extends Backbone.Marionette.ItemView
	template: require('templates/number-template')
	events:
		'click #inc': 'inc'
	ui: 
		incInp: '#number'
	initialize: ->
		@listenTo @model, "change:number", @numberChanged
	numberChanged: ->
		@ui.incInp.attr 'value', @model.get 'number'
	inc: (evt) ->
		@trigger 'number:inc'