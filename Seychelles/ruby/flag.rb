#!/usr/bin/ruby
require 'bundler/inline'

gemfile true do
  gem 'colorize'
end

def b(c,a=1)
  return "▮".colorize(:color => c, :background => c)*a
end

width = 80
height = width/2
height.times do |heightc|
  width.times do |widthc|
    if widthc*3+heightc*2<=width
      print b(:blue)
    elsif widthc*1.5+heightc*2<=width
      print b(:yellow)
    elsif widthc/1.5+heightc*2<=width
      print b(:red)
    elsif widthc/3+heightc*2<=width
      print b(:white)
    else
     print b(:green)
    end
  end
  puts
end
puts b(:blue)+b(:green, width-1)
