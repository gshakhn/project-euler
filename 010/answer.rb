#!/usr/bin/env ruby

require '../ruby_lib.rb'

max = 2000000

puts primes_up_to(max).inject(:+)
