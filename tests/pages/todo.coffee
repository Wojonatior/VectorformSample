`import PageObject from 'ember-cli-page-object'`

{ collection, visitable, clickable, isHidden, count, fillable, value } = PageObject

TodoPage = PageObject.create
  visit: visitable('/todo/all')
  addTask: clickable('.add-task')
  setTaskName: fillable('.task-name-input')
  taskInputValue: value('.task-name-input')

  tasks: collection
    itemScope: '.task'

`export default TodoPage`

