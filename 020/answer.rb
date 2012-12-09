#!/usr/bin/env ruby

def fact(n)
  if n == 1
    1
  else
    n * fact(n -1)
  end
end

puts fact(100).to_s.split(//).map {|c| c.to_i}.inject(:+)
