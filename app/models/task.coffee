`import DS from 'ember-data'`

Task = DS.Model.extend
  name: DS.attr('string')
  completed :DS.attr('boolean', defaultValue: false)

`export default Task`
