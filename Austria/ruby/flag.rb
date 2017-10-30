#!/usr/bin/env ruby
# coding: utf-8

require 'bundler/inline'

gemfile true do
  gem 'colorize'
end

def block(color, length)
  '▮'.colorize(color: color, background: color) * length
end

width = 80
length = 30
stripe = length / 3

3.times do |x|
  case x
  when 0, 2
    color = :red
  when 1
    color = :white
  end
  stripe.times { puts block(color, width) }
end
