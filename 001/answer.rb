#!/usr/bin/env ruby

min = 1
max = 999
numbers = (min..max).find_all {|i| i % 3 == 0 || i % 5 == 0}
sum = numbers.inject(:+)
puts sum
