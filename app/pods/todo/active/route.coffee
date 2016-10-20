`import Ember from 'ember';`

TodoActiveRoute = Ember.Route.extend
  controllerName: 'todo'

  renderTemplate: ->
    @render('todo/all')

  model: ->
    @store.findAll('task').then (tasks) ->
      tasks.filter (task) ->
        !task.get('completed')

`export default TodoActiveRoute;`
