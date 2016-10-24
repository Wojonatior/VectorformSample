`import Ember from 'ember';`

taskComponent = Ember.Component.extend
  tagName: 'tr'
  classNames: ['task']
  classNameBindings: ["completed"]

  completed: Ember.computed.alias('task.completed')

  actions:
    toggleComplete: ->
      @toggleAction(@get('task.id'))
      @rerender()
    deleteTask: ->
      @deleteAction(@get('task.id'))

`export default taskComponent;`
