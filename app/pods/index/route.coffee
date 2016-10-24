`import Ember from 'ember';`

IndexRoute = Ember.Route.extend
  redirect: ->
    @transitionTo('todo')

`export default IndexRoute;`
