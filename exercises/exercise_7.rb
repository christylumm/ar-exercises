require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...
class Employee 
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :hourly_rate, length: { in 40...200 }
end

class Stores
  validates :name, length: { minimum: 3 }
  validates :annual_revenue, numericality: { only_integer: true }
end

puts "Enter store name:"
@name = gets.chomp
puts "Enter store revenue:"
@annual_revenue = gets.chomp
create_store = Store.create(name: @name, annual_revenue: @annual_revenue)

puts create_store.errors.messages