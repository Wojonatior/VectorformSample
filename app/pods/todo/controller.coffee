`import Ember from 'ember'`

TodoController = Ember.Controller.extend

  tasks: Ember.computed.alias 'model'

  actions:
    addTask: ->
      @model.pushObject @taskName
      @set('taskName', '')

`export default TodoController;`
