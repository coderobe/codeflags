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
stripe = length/2

2.times do |time|
  color = ""
  case time
  when 0
    color = :red
  when 1
    color = :white
  end
  stripe.times do
    puts b(color, width)
  end
end
