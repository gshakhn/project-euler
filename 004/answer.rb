#!/usr/bin/env ruby

digits = 3
min = 10 ** (digits - 1)
max = 10 ** digits - 1

products = []

(min..max).each do |a|
  (a..max).each do |b|
    products.push(a * b)
  end
end

palindromes = products.find_all {|n| n.to_s == n.to_s.reverse}
puts palindromes.sort.last
