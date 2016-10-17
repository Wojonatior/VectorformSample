`import Ember from 'ember'`

TodoController = Ember.Controller.extend

  tasks: Ember.computed.alias 'model'

  actions:
    addTask: ->
      newTask = @store.createRecord 'task',
        name: @taskName
        completed: false
      newTask.save()
      #@model.pushObject @taskName
      @set('taskName', '')

`export default TodoController;`

