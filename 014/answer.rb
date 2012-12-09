#!/usr/bin/env ruby

@memoize = {}

def chain_size(n)
  return 1 if n == 1
  return @memoize[n] if @memoize.include?(n)
  if n % 2 == 0
    next_n = n / 2
  else
    next_n = 3 * n + 1
  end

  size = 1 + chain_size(next_n)
  @memoize[n] = size
  size
end

max_i = 1
max_size = 0

(1..1000000).each do |i|
  i_size = chain_size(i)
  if i_size > max_size
    max_size = i_size
    max_i = i
  end
end

puts max_i
