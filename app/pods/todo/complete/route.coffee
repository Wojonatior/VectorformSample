`import Ember from 'ember';`

TodoCompleteRoute = Ember.Route.extend
  controllerName: 'todo'

  renderTemplate: ->
    @render('todo/all')

  model: ->
    @store.findAll('task').then (tasks) ->
      tasks.filter (task) ->
        task.get('completed')

`export default TodoCompleteRoute;`
