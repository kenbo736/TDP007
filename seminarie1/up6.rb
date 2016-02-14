#!/usr/bin/ruby
#-*- coding:utf-8 -*-

class PersonName
  def initialize(fName, sName)
    @firstName = fName
    @surName = sName
  end

  def getFullName()
    return "#{@firstName} #{@surName}"
  end

  def setFullName(name)
    nameArray = name.split(" ")
    @firstName = nameArray[0]
    @surName = nameArray[1]
  end
end

class Person
  def initialize(fName="glödlampa", sName="nittiofyra", age=20)
    @name = PersonName.new(fName, sName)
    @age = age
    @birthyear = Integer(Time.now.strftime("%Y"))-age
  end

  def printNameAgeAndBirthdate()
    puts @name.getFullName + " " + String(@age) + " " + String(@birthyear)
  end
end

p = Person.new("motorväg", "uppochner", 34)
p.printNameAgeAndBirthdate()

p = PersonName.new("idiot", "idiotsson")
puts p.getFullName()

p.setFullName("ungefär mittemellan")
puts p.getFullName()
