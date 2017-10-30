#!/usr/bin/ruby
require 'bundler/inline'

gemfile true do
  gem 'colorize'
end

#default base length is 26
BL = 22 #base length
length = BL+BL/1.66+BL*2 #should be the same as line1 at all times

def b(c,a=1)
  return "▮".colorize(:color => c, :background => c)*a
end

def line1()
  #finnish people fucking up my code with their odd proportions.
  puts b(:white, BL) + b(:blue, BL/1.66) + b(:white, BL*2)
end

(BL/2).times do
  line1
end
(BL/3.32).to_i.times do
  puts b(:blue, length)
end
(BL/2).times do
  line1
end
