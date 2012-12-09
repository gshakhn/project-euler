#!/usr/bin/env ruby

require '../ruby_lib.rb'

f = {}

(1..20).each do |i|
  f.merge!(factors_count(i)) do |k, old, new|
    res = old if new.nil?
    res = new if old.nil?
    res = old if old > new
    res = new if new >= old
    res
  end
end

answer = f.inject(1) {|acc, (k,v)| acc * (k ** v)}

puts answer
