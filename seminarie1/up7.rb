#!/usr/bin/ruby
#-*- coding:utf-8 -*-

class Integer
  def fib()
    return fibbie(self)
  end
  def fibbie(inputTal)
    if(inputTal <= 1)
      return 1
  end
  return fibbie(inputTal - 1) + fibbie(inputTal - 2)
  end
end

puts 5.fib()
