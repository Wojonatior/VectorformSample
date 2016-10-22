`import Ember from 'ember';`

TodoRoute = Ember.Route.extend
  model: ->
    @store.findAll('task')

  setupController: (controller, model)->
    controller.set('allTasks',model)

`export default TodoRoute;`
