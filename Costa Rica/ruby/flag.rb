#!/usr/bin/ruby
require "colorize"

def b(c,a=1)
  return "▮".colorize(:color => c, :background => c)*a
end

width = 80
length = 30
stripe = length/6

6.times do |time|
  color = ""  
  case time
  when 0
    color = :blue
  when 1
    color = :white
  when 2
    color = :red
  when 3
    color = :red
  when 4
    color = :white
  when 5
    color = :blue
  end
  stripe.times do
    puts b(color, width)
  end
end
