#!/usr/bin/env ruby

require '../ruby_lib.rb'

def num_factors(n)
  factors_count(n).inject(1) { |acc, (k,v)| acc * (v+1) }
end

i = 1
num = 1

until num_factors(num) > 500 do
  i += 1
  num += i
end

puts num
