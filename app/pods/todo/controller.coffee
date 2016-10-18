`import Ember from 'ember'`

TodoController = Ember.Controller.extend

  tasks: Ember.computed.alias 'model'

  actions:
    deleteTask: (modelId)->
      @store.find('task', modelId).then (rec) ->
        rec.deleteRecord()
        rec.save()

    addTask: ->
      newTask = @store.createRecord 'task',
        name: @taskName
        completed: false
      newTask.save()
      @set('taskName', '')
    completeTask: ->


`export default TodoController;`

