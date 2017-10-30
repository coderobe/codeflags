#!/usr/bin/ruby
require 'bundler/inline'

gemfile true do
  gem 'colorize'
end

def b(c,a=1)
  return "▮".colorize(:color => c, :background => c)*a
end

width = 80
arrow = width/2
arrowc = 0
(arrow/2).times do
  puts b(:blue, arrowc+2) + b(:white, width-(arrowc+2))
  arrowc = arrowc+2
  break if arrowc == arrow
end
(arrow/2).times do
  puts b(:blue, arrowc) + b(:red, width-arrowc)
  arrowc = arrowc-2
  break if arrowc == 0
end
