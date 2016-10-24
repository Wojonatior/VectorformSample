`import Ember from 'ember';`

taskComponent = Ember.Component.extend
  completed: Ember.computed.alias('task.completed')
  tagName: 'tr'
  classNames: ['task']

  actions:
    #TODO This should probably bubble up to the controller level so that the component can be re-rendered and have the data reflected in the store
    toggleComplete: ->
      @toggleAction(@get('task.id'))
    deleteTask: ->
      @deleteAction(@get('task.id'))

`export default taskComponent;`
