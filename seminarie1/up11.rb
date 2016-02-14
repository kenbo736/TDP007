#!/usr/bin/ruby
#-*- coding:utf-8 -*-

require 'open-uri.rb'

def tag_names(htmlString)
  htmlString = htmlString.scan(/<[a-zA-Z]+>/)
  return htmlString
end

html = open("http://www.google.com/") { |f| f.read }
puts tag_names(html).join(", ")
