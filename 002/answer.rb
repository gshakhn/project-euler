#!/usr/bin/env ruby

max = 4000000

fibs = [];

fibs.push(1)
fibs.push(2)

while (fibs.last <= max) do
  fibs.push(fibs.last(2).inject(:+))
end

fibs.pop
fibs.keep_if {|i| i % 2 == 0}
sum = fibs.inject(:+)
puts sum
