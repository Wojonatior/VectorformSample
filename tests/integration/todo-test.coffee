`import page from '../pages/todo'`

describe "Integration: Todo", ->

  before ->
    @page = page

    @addTask = (taskName) ->
      @page.setTaskName(taskName)
      @page.addTask()

  beforeEach ->
    Em.run =>
      # Emberfire broke the @store.unloadAll method
      # This is a workaround to clear all records from the store between tests
      storedTasks = @store.findAll('task')
      storedTasks.then ->
        storedTasks.forEach (item) ->
          item.destroyRecord()

    @page.visit()

  describe "adding players", ->
    it "can add a new player", ->
      expect(@page.tasks().toArray().length).to.equal 0

      @addTask("derp")

      andThen =>
        expect(@page.tasks().toArray().length).to.equal 1
        expect(@page.taskInputValue).to.equal ""

