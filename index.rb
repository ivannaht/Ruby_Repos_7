# frozen_string_literal: true
# Task 1..12
class Person
  attr_accessor :name, :language, :gender, :age, :profession, :hobby

  def initialize(name, language, gender, age, profession, hobby)
    @name = name
    @language = language
    @gender = gender
    @age = age
    @profession = profession
    @hobby = hobby
  end

  def to_s
    "#{@name}, #{@language}, #{@gender}, #{@age}, #{@profession}, #{@hobby}"
  end

  def greeting(name)
    # @name = name
    p "Hello, this is #{name}!"
  end
end

person = Person.new('Oscar', 'English', 'male', 20, 'developer', 'singing')
p person.class
p person.is_a?(Person)
person.greeting(person.name)
p person.to_s
person.name = 'Richard'
person.greeting(person.name)
p person.to_s

puts('*'*80)

# Task 13
class Pet
  attr_accessor :animal

  def initialize (animal)
    @animal = animal
  end

  class << self
    def find_ability(animal)
      ability = case animal
                when 'frog', 'salamander'
                  'Can swim'
                when 'parrot', 'pigeon'
                  'Can sing'
                else 'Cannot swim and sing'
                end
      p ability
    end
    end

  def find_type(animal)
    type = case animal
           when 'frog', 'salamander'
             'Type is Amphibians'
           when 'parrot', 'pigeon'
             'Type is Birds'
           else 'Unknown type'
           end
    p type
  end
end

pet = Pet.new('parrot')
p pet.animal
pet.find_type(pet.animal)
Pet.find_ability(pet.animal)

pet.animal = 'cat'
p pet.animal
pet.find_type(pet.animal)
Pet.find_ability(pet.animal)

puts('*'*80)

# Task 14



