`import Ember from 'ember';`

TodoRoute = Ember.Route.extend
  model: ->
    ["task1", "task2", "task3"]

`export default TodoRoute;`
