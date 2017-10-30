#!/usr/bin/ruby
require "colorize"

#default is 22
length = 80

def b(c,a=1)
  return "▮".colorize(:color => c, :background => c)*a
end

def tb(size)
  section_length = size/5
  10.times do
    print b(:white, section_length*2)
    print b(:red, section_length)
    puts b(:white, section_length*2)
  end
end

tb(length)
6.times { puts b(:red, length) }
tb(length)