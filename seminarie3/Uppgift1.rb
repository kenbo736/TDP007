#!/usr/bin/ruby
#-*- coding:utf-8 -*-

class Person
  def initialize(ct, pn, yd, g, a)
    @carType = ct
    @postNumber = pn
    @yearsDriven = yd
    @gender = g
    @age = a
    @points = 0
  end

  def evaluatePolicy(inputPolicy)
    self.instance_eval(File.read(inputPolicy))
    @points += @bilmarke[@carType]
    @points += @postnummer[@postNumber]
    @points += @korkort.select {|a| a === @yearsDriven }.values.first
    @points += @kon[@gender]
    @points += @alder.select {|a| a === @age }.values.first
    rules()
    return @points
  end

end

kalle = Person.new("Volvo","58647",2,"M",32)
puts kalle.evaluatePolicy("policy.rb")
