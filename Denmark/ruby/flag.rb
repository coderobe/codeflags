#!/usr/bin/ruby
require 'bundler/inline'

gemfile true do
  gem 'colorize'
end

#default base length is 26
BL = 26 #base length
length = BL+BL/3+BL*1.75 #should be the same as line1 at all times

def b(c,a=1)
  return "▮".colorize(:color => c, :background => c)*a
end

def line1()
  puts b(:red, BL) + b(:white, BL/3) + b(:red, BL*1.75)
end

(BL/2).times do
  line1
end
(BL/6).times do
  puts b(:white, length)
end
(BL/2).times do
  line1
end
