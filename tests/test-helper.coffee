`import resolver from './helpers/resolver'`
`import { setResolver } from 'ember-mocha'`
`import startApp from './helpers/start-app'`
`import Ember from 'ember'`

Em = Ember

startApp()
setResolver(resolver)
