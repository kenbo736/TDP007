#!/usr/bin/ruby
#-*- coding:utf-8 -*-

def faculty(n)
  puts ((1..n).inject(1) { | result, entry | result * entry })
end

faculty(20)
