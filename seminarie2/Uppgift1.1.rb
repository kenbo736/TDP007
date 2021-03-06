#!/usr/bin/ruby
#-*- coding:utf-8 -*-

class Team

  attr_reader :name
  
  def initialize(name, f, a)
    @name = name
    @goalsWon = f
    @goalsLost = a
  end

  def getGoalAbs()
    return (@goalsWon-@goalsLost).abs()
  end

  def getGoalDiff()
    if (@goalsLost == 0)
      return @goalsWon
    end
    return (@goalsWon.to_f/@goalsLost.to_f)
  end
end

teamList = []

f = File.open("football.txt", "r")
f.each_line do |line|
  if (line.scan(/\s+[0-9]+\.\s[A-Za-z\_]+/).length()==1)
    name = line.scan(/[A-Za-z\_]+/)[0]
    wonlost = line.scan(/[0-9]+\s+\-\s+[0-9]+/)[0].scan(/[0-9]+/)
    won = wonlost[0]
    lost = wonlost[1]
    teamList.push(Team.new(name, won.to_i(), lost.to_i()))
  end
end

f.close

minst = "a"
for x in teamList
  if minst == "a"
    minst = x
  else
    if x.getGoalAbs() < minst.getGoalAbs()
      minst = x
    end
  end
end

teamList.sort! { |a, b|  a.getGoalDiff() <=> b.getGoalDiff() }

#puts "minst: " + minst.name

for x in teamList
  puts "\n" + x.name
  puts x.getGoalDiff
end
