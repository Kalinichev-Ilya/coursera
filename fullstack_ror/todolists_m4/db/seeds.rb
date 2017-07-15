# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.destroy_all
Profile.destroy_all
TodoList.destroy_all
TodoItem.destroy_all

fiorina = User.create(username: 'Fiorina', password_digest: '12321')
trump = User.create(username: 'Trump', password_digest: '12321')
carson = User.create(username: 'Carson', password_digest: '12321')
clinton = User.create(username: 'Clinton', password_digest: '12321')

fiorina_prof = Profile.create(gender: 'female', birth_year: 1954, first_name: 'Carly', last_name: 'Fiorina')
trump_prof = Profile.create(gender: 'male', birth_year: 1946, first_name: 'Donald', last_name: 'Trump')
carson_prof = Profile.create(gender: 'male', birth_year: 1951, first_name: 'Ben', last_name: 'Carson')
clinton_prof = Profile.create(gender: 'female', birth_year: 1947, first_name: 'Hillary', last_name: 'Clinton')

fiorina.profile = fiorina_prof
trump.profile = trump_prof
carson.profile = carson_prof
clinton.profile = clinton_prof

fiorina_list = TodoList.create(list_name: 'first', list_due_date: Date.today + 1.year)
trump_list = TodoList.create(list_name: 'first', list_due_date: Date.today + 1.year)
carson_list = TodoList.create(list_name: 'first', list_due_date: Date.today + 1.year)
clinton_list = TodoList.create(list_name: 'first', list_due_date: Date.today + 1.year)

fiorina.todo_lists << fiorina_list
trump.todo_lists << trump_list
carson.todo_lists << carson_list
clinton.todo_lists << clinton_list

ti1 = TodoItem.create(due_date: Date.today + 1.year, title: 'Title', description: 'Description', completed: true)
ti2 = TodoItem.create(due_date: Date.today + 1.year, title: 'Title', description: 'Description', completed: true)
ti3 = TodoItem.create(due_date: Date.today + 1.year, title: 'Title', description: 'Description', completed: true)
ti4 = TodoItem.create(due_date: Date.today + 1.year, title: 'Title', description: 'Description', completed: true)
ti5 = TodoItem.create(due_date: Date.today + 1.year, title: 'Title', description: 'Description', completed: true)

fiorina_list.todo_items << ti1
fiorina_list.todo_items << ti2
fiorina_list.todo_items << ti3
fiorina_list.todo_items << ti4
fiorina_list.todo_items << ti5

ti6 = TodoItem.create(due_date: Date.today + 1.year, title: 'Title', description: 'Description', completed: true)
ti7 = TodoItem.create(due_date: Date.today + 1.year, title: 'Title', description: 'Description', completed: true)
ti8 = TodoItem.create(due_date: Date.today + 1.year, title: 'Title', description: 'Description', completed: true)
ti9 = TodoItem.create(due_date: Date.today + 1.year, title: 'Title', description: 'Description', completed: true)
ti10 = TodoItem.create(due_date: Date.today + 1.year, title: 'Title', description: 'Description', completed: true)

trump_list.todo_items << ti6
trump_list.todo_items << ti7
trump_list.todo_items << ti8
trump_list.todo_items << ti9
trump_list.todo_items << ti10

ti11 = TodoItem.create(due_date: Date.today + 1.year, title: 'Title', description: 'Description', completed: true)
ti12 = TodoItem.create(due_date: Date.today + 1.year, title: 'Title', description: 'Description', completed: true)
ti13 = TodoItem.create(due_date: Date.today + 1.year, title: 'Title', description: 'Description', completed: true)
ti14 = TodoItem.create(due_date: Date.today + 1.year, title: 'Title', description: 'Description', completed: true)
ti15 = TodoItem.create(due_date: Date.today + 1.year, title: 'Title', description: 'Description', completed: true)

carson_list.todo_items << ti11
carson_list.todo_items << ti12
carson_list.todo_items << ti13
carson_list.todo_items << ti14
carson_list.todo_items << ti15

ti16 = TodoItem.create(due_date: Date.today + 1.year, title: 'Title', description: 'Description', completed: true)
ti17 = TodoItem.create(due_date: Date.today + 1.year, title: 'Title', description: 'Description', completed: true)
ti18 = TodoItem.create(due_date: Date.today + 1.year, title: 'Title', description: 'Description', completed: true)
ti19 = TodoItem.create(due_date: Date.today + 1.year, title: 'Title', description: 'Description', completed: true)
ti20 = TodoItem.create(due_date: Date.today + 1.year, title: 'Title', description: 'Description', completed: true)

clinton_list.todo_items << ti16
clinton_list.todo_items << ti17
clinton_list.todo_items << ti18
clinton_list.todo_items << ti19
clinton_list.todo_items << ti20
