#!/usr/bin/ruby
require "colorize"

def b(c,a=1)
  return "▮".colorize(:color => c, :background => c)*a
end

width = 80
length = 30
stripe = length/11

11.times do |time|
  color = :white  
  case time
  when 0
    color = :blue
  when 10
    color = :red
  end
  stripe.times do
    puts b(color, width)
  end
end
