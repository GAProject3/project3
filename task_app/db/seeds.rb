# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.delete_all
Task.delete_all
Message.delete_all

a = User.create({name:"Reyes",email:"reyes@test.com",password:"reyes"})
b = User.create({name:"Xi",email:"xi@test.com",password:"xi"})

c = Task.create({title:"task1",content:"it's a task",duedate:"today",location:"nyc"})
d = Task.create({title:"task2",content:"it's another task",duedate:"tomorrow",location:"brooklyn"})

Tasking.create(user:a,task:c)
Tasking.create(user:a,task:d)

Message.create({content:"hi",attachment:"no attach",user_id: 1})