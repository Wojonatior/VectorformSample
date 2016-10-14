`import page from '../pages/todo'`

describe "Integration: Todo", ->

  before ->
    @page = page

    @addTask = (taskName) ->
      @page.setTaskName(taskName)
      @page.addTask()

  beforeEach ->
    @page.visit()

  describe "adding players", ->
    it "can add a new player", ->
      expect(@page.tasks().toArray().length).to.equal 3

      @addTask("derp")

      andThen =>
        expect(@page.tasks().toArray().length).to.equal 4
        expect(@page.taskInputValue).to.equal ""
