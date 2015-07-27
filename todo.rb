require_relative 'config/application'
require_relative 'app/controllers/controller'



input = ARGV

case input[0]
when "add"
  Controller.add(input[1..-1].join(" "))
when "delete"
  Controller.delete(input[1])
when "list"
  Controller.list
when "completed"
  Controller.completed(input[1])
else
  puts "invalid input"
end