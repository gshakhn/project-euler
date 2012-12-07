#!/usr/bin/env ruby

require '../ruby_lib.rb'

number = 600851475143

n_factors = factors(number)
n_factors.sort

puts n_factors.last
