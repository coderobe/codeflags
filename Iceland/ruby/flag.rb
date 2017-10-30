#!/usr/bin/ruby
require 'bundler/inline'

gemfile true do
  gem 'colorize'
end

#default is 23
BL = 23 #base length
length = BL+BL/7+BL/3.5+BL/7+BL*2 #should be the same as line1 at all times

def b(c,a=1)
  return "▮".colorize(:color => c, :background => c)*a
end

def line1()
  puts b(:blue, BL) + b(:white, BL/7) + b(:red, BL/3.5) + b(:white, BL/7) + b(:blue, BL*2)
end

#sometimes this calculates incorrectly
def line2()
  puts b(:white, BL+BL/7) + b(:red, BL/3.5) + b(:white, BL*2+BL/7)
end

(BL/2).times do
  line1
end
(BL/14).times do
  line2
end
(BL/7).to_i.times do
  puts b(:red, length)
end
(BL/14).times do
  line2
end
(BL/2).times do
  line1
end
