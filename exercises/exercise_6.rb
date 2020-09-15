require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...

class Store
  has_many :employees
end
 
class Employee
  belongs_to :store
end

@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 45)
@store1.employees.create(first_name: "Andy", last_name: "Lindsay", hourly_rate: 60)
@store1.employees.create(first_name: "Kelly", last_name: "Gordan", hourly_rate: 70)
@store1.employees.create(first_name: "Glen", last_name: "Chua", hourly_rate: 60)
@store1.employees.create(first_name: "Bradley", last_name: "Fung", hourly_rate: 55)

@store2.employees.create(first_name: "Travis", last_name: "Borsa", hourly_rate: 45)
@store2.employees.create(first_name: "Emma", last_name: "Cuddy", hourly_rate: 60)
@store2.employees.create(first_name: "Janelle", last_name: "Stiehl", hourly_rate: 70)
@store2.employees.create(first_name: "Jeremy", last_name: "Shaki", hourly_rate: 60)
@store2.employees.create(first_name: "Francis", last_name: "Bourgouin", hourly_rate: 55)

puts @store1
puts @store2