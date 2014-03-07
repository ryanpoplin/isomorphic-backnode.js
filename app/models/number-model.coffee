module.exports = class Number extends Backbone.Model
	defaults:
		number: 1
	inc: ->
		# change:number event...
		@set 'number', @get('number') + 1