module MyModule

  Greeting = "Greetings from my module."


  def MyModule.helloworld
    return "Hello world!"
  end
end

class Person

  @@people = 0

  def initialize(name="XAE-12", age=0, gender="android")
    @name = name 
    @age = age
    @gender = gender
    puts "Hello, my name is #{@name}, and I am a #{@age}-year old #{@gender}."
    @@people += 1
  end

  def self.people_count
    puts "There are #{@@people} people."
  end
end

class Employee < Person
  attr_accessor :company, :salary
  @company = ""
  @salary = ""
  def describe
    "I, #{@name}, a #{@age}-year-old #{@gender}, work at #{@company} and make $#{@salary} per year."
  end
  
end
