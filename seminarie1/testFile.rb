#!/usr/bin/ruby
#-*- coding:utf-8 -*-

require 'test/unit'
require './Uppgift1.1.rb'
require './Uppgift1.2.rb'
require './Uppgift2.rb'
require './Uppgift3.rb'
require './Uppgift4.rb'

class TestAssignments < Test::Unit::TestCase
  def test_Uppgift1
    do_three = Repeat.new(3)
    assert_nothing_thrown{do_three.each{ puts "Hooray!" }}
    
    assert_nothing_thrown{n_times(3){ puts "Hello!" }}
    
    assert_equal(2432902008176640000, faculty(20))
  end

  def test_Uppgift2
    p = Person.new("motorväg", "uppochner", 34)
    assert_equal("motorväg uppochner 34 1981", p.getNameAgeAndBirthdate())

    p = PersonName.new("idiot", "idiotsson")
    assert_equal("idiot idiotsson", p.getFullName())

    p.setFullName("ungefär mittemellan")
    assert_equal("ungefär mittemellan", p.getFullName())

  end

  def test_Uppgift3
    assert_equal(377, 13.fib())
    
    assert_equal("LOL","laughing out loud".acronym())
  end

  def test_Uppgift4
    testString = "fuhgfudshjfgsdaujfhdgbj USERNAME: Börje ifhsfoildjfsol"
    assert_equal("Börje", getUsername(testString))
    
    html = open("http://www.hasthelargehadroncolliderdestroyedtheworldyet.com/") { |f| f.read }
    assert_equal(["<html>", "<head>", "<title>", "<body>", "<noscript>"], tag_names(html))
  end
end
