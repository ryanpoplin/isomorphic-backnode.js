module.exports = class Note extends Backbone.Model
	defaults: 
		title: 'Just a note...'
		completed: false
	initialize: ->
		console.log 'Note Model Init...'
		@on 'change', ->
			console.log 'Values for this model have changed...'
		@on 'change:title', ->
			console.log 'You changed the title of a note...'
		@on 'invalid', (model, error) ->
			console.log error

