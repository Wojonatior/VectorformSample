`import Ember from 'ember';`

taskComponent = Ember.Component.extend
  task: Ember.computed.alias('model')

  actions:
    #TODO This should probably bubble up to the controller level so that the component can be re-rendered and have the data reflected in the store
    toggleComplete: ->
      console.log @get 'task.completed'
      @toggleProperty 'task.completed'
      console.log @get 'task.completed'

`export default taskComponent;`
