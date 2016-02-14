#!/usr/bin/ruby
#-*- coding:utf-8 -*-

class String
  def acronym
    a = self.split(" ").each{| word | word.capitalize!}
    c = []
    for b in a
      c.push(b[0])
    end
    return c.join("")
  end
end

puts "Laughing out loud".acronym()
