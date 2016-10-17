`import Ember from 'ember';`
`import Application from '../../app';`
`import config from '../../config/environment';`

startApp = (attrs) ->
  application = undefined

  attributes = Ember.merge({}, config.APP)
  attributes = Ember.merge(attributes, attrs); #use defaults, but you can override

  Ember.run =>
    application = Application.create(attributes)
    application.setupForTesting()
    application.injectTestHelpers()

  application

beforeEach ->
  @app = startApp()

  container = @app.__container__
  @store       = container.lookup('service:store')

afterEach ->
    Ember.run(@app, 'destroy')

`export default startApp;`
