`import Ember from 'ember';`
`import config from './config/environment';`

Router = Ember.Router.extend
  location: config.locationType

Router.map ->
  @route 'todo', ->
    @route 'all'
    @route 'complete'
    @route 'active'


`export default Router;`
