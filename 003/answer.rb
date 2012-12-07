#!/usr/bin/env ruby

number = 600851475143

def factors(n)
  return [] if n == 1
  factor = (2..n).find {|f| n % f == 0}
  return [factor] + factors(n / factor)
end

n_factors = factors(number)
n_factors.sort

puts n_factors.last
