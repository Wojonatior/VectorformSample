`import Ember from 'ember';`

TodoRoute = Ember.Route.extend
  model: ->
    @store.findAll('task')

`export default TodoRoute;`
