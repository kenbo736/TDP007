#!/usr/bin/ruby
#-*- coding:utf-8 -*-

def getUsername(shuffledString)
  shuffledString.scan(/USERNAME:\s[\wÅÄÖåäö]+/)[0].split(" ")[1]
end

a = "USERNAME: KentaBetång sadasdsadad"
puts getUsername(a)
