#!/usr/bin/ruby
require 'bundler/inline'

gemfile true do
  gem 'colorize'
end

def b(c,a=1)
  return "▮".colorize(:color => c, :background => c)*a
end

width = 80
length = 30
stripe = length/3

3.times do |time|
  color = ""  
  case time
  when 0
    color = :white
  when 1
    color = :green
  when 2
    color = :red
  end
  stripe.times do
    puts b(color, width)
  end
end
