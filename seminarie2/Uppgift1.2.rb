#!/usr/bin/ruby
#-*- coding:utf-8 -*-

class Weather

  attr_reader :day
  
  def initialize(day, mxt, mnt)
    @day = day
    @highestTemp = mxt
    @lowestTemp = mnt
  end

  def getTempAbs()
    return (@highestTemp-@lowestTemp).abs()
  end

  def getTempDiff()
    if (@lowestTemp == 0)
      return @highestTemp
    end
    return (@highestTemp.to_f/@lowestTemp.to_f)
  end
end

weatherList = []

f = File.open("weather.txt", "r")
f.each_line do |line|
  if (line.scan(/^\s+[0-9\*\.]+\s+[0-9\*\.]+\s+[0-9\*\.]+/).length()==1)
    importantStuff = line.scan(/[0-9\.]+/)
    day = importantStuff[0]
    hTemp = importantStuff[1]
    lTemp = importantStuff[2]
    weatherList.push(Weather.new(day, hTemp.to_i(), lTemp.to_i()))
  end
end
f.close

minst = "a"
for x in weatherList
  if minst == "a"
    minst = x
  else
    if x.getTempAbs() < minst.getTempAbs()
      minst = x
    end
  end
end

weatherList.sort! { |a, b|  a.getTempDiff() <=> b.getTempDiff() }

puts "minst: " + minst.day

for x in weatherList
  puts "\nday: " + x.day
  puts x.getTempDiff
end
