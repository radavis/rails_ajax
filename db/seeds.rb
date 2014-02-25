# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

todo = [ 
  ['wash clothes', false], 
  ['wash dishes', false], 
  ['hijack bus', false],
  ['clean room', true],
  ['make dinner', false]
]

todo.each do |task_name, completed|
  Task.find_or_create_by_name(name: task_name, complete: completed)
end
