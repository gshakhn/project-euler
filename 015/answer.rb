#!/usr/bin/env ruby

@memoize = {}
@memoize[[0,0]] = 1

def routes(r, c)
  l = [r,c]
  return @memoize[l.sort] if @memoize.include?(l.sort)
  res = 0
  res += routes(r-1, c) if r > 0
  res += routes(r, c -1) if c > 0
  @memoize[l.sort] = res
  return res
end

puts routes(20, 20)
