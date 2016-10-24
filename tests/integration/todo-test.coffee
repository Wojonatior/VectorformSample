`import page from '../pages/todo'`

describe "Integration: Todo", ->

  before ->
    @page = page

    @addTask = (taskName) ->
      @page.setTaskName(taskName)
      @page.addTask()

    @toggleComplete = (taskNum) ->
      click(".tasks:nth(#{taskNum}) .toggle-complete")

    @exists = (selector) ->
      !!find(selector).length

  beforeEach ->
    Em.run =>
      # Emberfire broke the @store.unloadAll method
      # This is a workaround to clear all records from the store between tests
      storedTasks = @store.findAll('task')
      storedTasks.then ->
        storedTasks.forEach (item) ->
          item.destroyRecord()

    @page.visit()

  describe "tasks", ->
    it "can add a new tasks", ->
      expect(@page.tasks().toArray().length).to.equal 0

      @addTask("derp")

      andThen =>
        expect(@page.tasks().toArray().length).to.equal 1
        expect(@page.taskInputValue).to.equal ""

    it "can mark tasks completed", ->
      @addTask("derp")

      expect(@exists('.fa-square-o')).to.equal true

      @toggleComplete(0)

      andThen =>
        expect(@exists('.fa-check-square-o')).to.equal true

    it "can mark tasks back to active from complete", ->
      @addTask("derp")

      expect(@exists('.fa-square-o')).to.equal true

      @toggleComplete(0)
      @toggleComplete(0)

      andThen =>
        expect(@exists('.fa-square-o')).to.equal true

    it "displays completed tasks differently", ->

