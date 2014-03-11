###
NumberModel = require 'models/number-model'
NumberView = require 'views/number-view'
NumberController = require 'controllers/number-controller'
###

# Testing...
CoffeeModule = require 'testing/testing'

# Testing...
NoteModel = require 'models/note-model'

# Testing...
IndexView = require 'views/index-view'

class Application extends Backbone.Marionette.Application
  initialize: =>
    @on 'initialize:after', @startHistory

    # Testing...
    # model = new NumberModel
    # view = new NumberView model: model

    ###
		Below is for pure testing in Backbone and CoffeeScript...
    ###

    # Backbone.js Model...

    # Testing...
    noteOne = new NoteModel
    console.log noteOne
    console.log JSON.stringify noteOne
    noteTwo = new NoteModel
    	title: 'Master Node.js...'
    	completed: false
    console.log noteTwo
    console.log JSON.stringify noteTwo
    console.log noteTwo.get 'title'
    console.log noteTwo.get 'completed'
    noteTwoAttrs = noteTwo.toJSON()
    console.log noteTwoAttrs
   	# 'change' event trigger...
   	noteThree = new NoteModel 
   	noteThree.set 'title', 'Master Backbone.js & Angular.js...'
   	console.log noteThree.get 'title'
   	console.log noteThree.get 'completed'
   	# Event trials start here...
   	ProgrammerModel = new Backbone.Model
   	ProgrammerModel.on 'change:name', -> console.log 'Name Changed...'
   	ProgrammerModel.set 'name', 'Vredesbyrdann...'
   	console.log ProgrammerModel.get 'name'
   	# Specific syntax...
   	ProgrammerModel.set {name: 'Poplinr'}, {silent: true}
   	console.log ProgrammerModel.hasChanged 'name'
   	console.log ProgrammerModel.hasChanged null
   	# Continue with the NoteModel...
   	noteFour = new NoteModel
   	noteFour.set 'title', 'CoffeeScript is fun...'
   	noteFour.set 'completed', true
   	# model.validate()...
   	AnotherProgrammer = new Backbone.Model {name: 'Vredesbyrdann'}
   	console.log AnotherProgrammer
   	# the validate method is special...
   	AnotherProgrammer.validate = (attrs) ->
   		if not attrs.name
   			console.log 'This model requires a name...'
   	AnotherProgrammer.set 'name', 'PoplinrTwo'
   	console.log AnotherProgrammer.get 'name'
   	AnotherProgrammer.unset 'name', {validate: true}
   	console.log AnotherProgrammer.attributes
   	console.log AnotherProgrammer.validationError

   	# More Backbone.js Model...

   	# extend...
   	# Backbone.Model.extend(props, [classProps])

   	# Config...

   	NodeProgram = Backbone.Model.extend
   		initialize: ->
   			console.log 'NodeProgram Init...'
   			return
   		author: ->
   			console.log 'Poplinr'
   			return
   		allowedToEdit: (access) ->
   			true

   	PrivateNodeProgram = NodeProgram.extend
   		allowedToEdit: (access) ->
   			access.owns @

   	AnotherNodeProgram = Backbone.Model.extend
   		set: (attributes, options) ->
   			Backbone.Model::set.apply @, arguments
   			# ...

   	# constructor / init...
   	# new Model([attributes], [options])

   	Poplinr = Backbone.Model.extend
   		initialize: ->
   			console.log 'Just a model...'
   		defaults:
   			name: 'Hacker'
   	
   	Archive = Backbone.Model.extend
   		constructor: ->
   			@info = new Poplinr
   			Backbone.Model.apply @, arguments
   		parse: (data, options) ->
   			@info.reset data.info
   			data.archive

   	# get...
   	# model.get(attribute)...

   	# set...
   	# model.set(attributes, [options])

   	(->
   		console.log 'IFFE func test...'
   	)()

   	# escape...
   	# model.escape(attribues)

   	###
   	hacker = new Backbone.Model
   		name: '<script>console.log('xss');</script>'

   	console.log hacker.escape 'name'
	###

   	# has...

   	console.log noteFour.has 'title'

   	# model.unset(attributes, [options])

   	# model.clear([options])

   	# model.id

   	# model.idAttribute

   	# cid...
   	# model.cid



   	###
   		Core Code Below...
   	### 

    view = new IndexView
   	# new NumberController model: model, view: view

    @addRegions mainRegion: '#main'
    # @mainRegion.show view

    @start()

  startHistory: (options) => Backbone.history.start()

module.exports = Application