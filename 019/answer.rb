#!/usr/bin/env ruby

require 'date'

puts (1901..2000).inject(0) { |acc, year| acc + (1..12).count { |month| Date.new(year, month, 1).sunday? } }
