#!/usr/bin/ruby
#-*- coding:utf-8 -*-

class Repeat
  def initialize(n)
    @n = n
  end
  
  def each(&kodblock)
    for counter in 0..@n-1
      kodblock.call()
    end
  end
end

def n_times(n, &kodblock)
  for counter in 0..n-1
    kodblock.call()
  end
end

do_three = Repeat.new(3)
do_three.each{ puts "Hooray!" }

n_times(3){ puts "Hello!" }
