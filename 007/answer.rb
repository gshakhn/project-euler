#!/usr/bin/env ruby

min = 2
max = 1000000

sieve = {}
sieve[1] = false
(min..max).each {|i| sieve[i] = true}

(min..max).each do |n|
  next unless sieve[n]
  i = n
  while i < max do
    i += n
    sieve[i] = false
  end
end

primes = sieve.select {|k,v| v}.keys

puts primes[10001 - 1]
