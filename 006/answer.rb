#!/usr/bin/env ruby

min = 1
max = 100

products_sum = 0

(min..max).each do |a|
  ((a+1)..max).each do |b|
    products_sum += a * b
  end
end

answer = products_sum * 2

puts answer
