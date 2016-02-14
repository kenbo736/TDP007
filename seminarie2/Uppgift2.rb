#!/usr/bin/ruby
#-*- coding:utf-8 -*-

require 'rexml/document'

src = File.open "events.html"
doc = REXML::Document.new src
tempList = []

def printSubTags(doc, a, rubySucks)
  a.elements.each(){|n|
    if (n.text != nil) && (n.text.scan(/\t/).length==0)
      puts n.text
      rubySucks.push(n.text)
    end
    printSubTags(doc, n, rubySucks)
  }
end

def printClasses(doc, rubySucks)
  doc.elements.each("//div[@class='vevent']"){|n|
    rubySucks.push("\nEvent:")
    printSubTags(doc, n, rubySucks)
  }
end

printClasses(doc, tempList)

File.open("tempTextFile.txt", 'w'){|file|
  for a in tempList
    file.write(a + "\n")
  end
}
