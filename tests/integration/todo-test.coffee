`import page from '../pages/todo'`

describe "Integration: Todo", ->

  before ->
    @page = page

    @addTask = (taskName) ->
      @page.setTaskName(taskName)
      @page.addTask()

    @markComplete = (taskNum) ->
      click(".tasks:nth(#{taskNum}) .toggle-complete")

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
      expect(find('.fa-check-square-o').length).to.equal 0
      @markComplete(0)
      andThen =>
        expect(find('.fa-check-square-o').length).to.equal 1

    it "displays completed tasks differently", ->




fa-check-square-o:fa-square-o
