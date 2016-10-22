`import Ember from 'ember'`

TodoController = Ember.Controller.extend
  tasks: Ember.computed.alias 'model'
  completedTasks: Ember.computed.filterBy 'allTasks', 'completed'
  activeTasks: Ember.computed.filterBy 'allTasks', 'completed', false
  activeTasksCount: Ember.computed 'activeTasks', ->
    @get('activeTasks').length

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
      @store.find('task', modelId).then (task) ->
        task.set('completed', !task.get('completed'))
        task.save()

    deleteCompleted: () ->
      @get('completedTasks').forEach (completedTask) ->
        completedTask.deleteRecord()
        completedTask.save()

`export default TodoController;`

