#!/usr/bin/ruby
require 'bundler/inline'

gemfile true do
  gem 'colorize'
end

#default is 22
BL = 22 #base length
length = BL+BL/6+BL/3+BL/6+BL*2 #should be the same as line1 at all times

def b(c,a=1)
  return "▮".colorize(:color => c, :background => c)*a
end

def line1()
  puts b(:red, BL) + b(:white, BL/6) + b(:blue, BL/3) + b(:white, BL/6) + b(:red, BL*2)
end

#sometimes this calculates incorrectly
def line2()
  puts b(:white, BL+(BL/6)) + b(:blue, BL/3) + b(:white, BL*2+BL/3-BL/6-BL/21)
end

(BL/2).times do
  line1
end
(BL/12).times do
  line2
end
(BL/6).times do
  puts b(:blue, length)
end
(BL/12).times do
  line2
end
(BL/2).times do
  line1
end
