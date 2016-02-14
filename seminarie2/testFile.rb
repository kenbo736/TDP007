#!/usr/bin/ruby
#-*- coding:utf-8 -*-

require 'test/unit'
require './Uppgift1.1.rb'
require './Uppgift1.2.rb'
require './Uppgift2.rb'

class TestAssignments < Test::Unit::TestCase
  def test_Uppgift1
    t = Team.new("lagnamn", 20, 10)
    assert_equal(t.getGoalAbs(), 10)
    assert_equal(t.getGoalDiff(), 2)

    w = Weather.new("dag", 20, 10)
    assert_equal(w.getTempAbs(), 10)
    assert_equal(w.getTempDiff(), 2)
  end

  def test_Uppgift2
    tempList = []
    assert_nothing_thrown(){
      doc = REXML::Document.new "<tag>hbfdiuohvfdiovhj</tag>"
      printClasses(doc, tempList)
    }
    assert_nothing_thrown(){
      doc = REXML::Document.new "<tag></tag>"
      printClasses(doc, tempList)
    }
  end
end
