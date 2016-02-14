#!/usr/bin/ruby
#-*-coding:utf-8-*-

require 'test/unit'
require './constraint_networks.rb'

class TestConstNet < Test::Unit::TestCase
  def test_adder()
    a = Connector.new("a")
    b = Connector.new("b")
    c = Connector.new("c")
    Adder.new(a, b, c)
    a.user_assign(10)
    b.user_assign(5)
    assert_equal(15, c.value)
    a.forget_value "user"
    c.user_assign(20)
    assert_equal(15, a.value)
  end

  def test_multiplier()
    a = Connector.new("a")
    b = Connector.new("b")
    c = Connector.new("c")
    Multiplier.new(a, b, c)
    a.user_assign(10)
    b.user_assign(5)
    assert_equal(50, c.value)
    a.forget_value "user"
    c.user_assign(25)
    assert_equal(5, a.value)
  end

  def test_c2f()
    c, f = celsius2fahrenheit()
    c.user_assign(0)
    assert_equal(32, f.value)
    c.user_assign(100)
    assert_equal(212, f.value)
    
    c.forget_value("user")
    f.user_assign(32)
    assert_equal(0, c.value)
    f.user_assign(212)
    assert_equal(100, c.value)
  end
end
