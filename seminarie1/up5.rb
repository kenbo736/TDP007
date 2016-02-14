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
    @fistName = nameArray[0]
    @surName = nameArray[1]
  end
end

p = PersonName.new("Kenneth", "Borjesson")
puts p.getFullName()
p.setFullName("något")
puts p.getFullName()
