module.exports = class CoffeeView extends Backbone.Marionette.ItemView
	template: require 'templates/coffee-template'
	initialize: ->
		console.log 'CoffeeView Init...'
		blog = 
			blogger:
				name: @model.get 'name'
		jQuery ->
			$('#blogger-name').html(blog.blogger.name + 'aaa')