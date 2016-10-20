`import Ember from 'ember';`

TodoAllRoute = Ember.Route.extend
  controllerName: 'todo'

  model: ->
    @store.findAll('task')

`export default TodoAllRoute;`
