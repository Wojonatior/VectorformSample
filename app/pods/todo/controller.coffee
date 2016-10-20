`import Ember from 'ember'`

TodoController = Ember.Controller.extend
  tasks: Ember.computed.alias 'model'
  completedTasks: Ember.computed.filterBy 'tasks', 'completed'

  actions:
    deleteTask: (modelId) ->
      @store.find('task', modelId).then (rec) ->
        rec.deleteRecord()
        rec.save()

    addTask: ->
      newTask = @store.createRecord 'task',
        name: @taskName
        completed: false
      newTask.save()
      @set('taskName', '')

    toggleCompleted: (modelId) ->
      @store.find('task', modelId).then (rec) ->
        console.log rec.get('completed')
        rec.set('completed', !rec.get('completed'))
        console.log rec.get('completed')
        rec.save()

    deleteCompleted: () ->
      @get('completedTasks').forEach (elem) ->
        elem.deleteRecord()
        elem.save()


`export default TodoController;`

