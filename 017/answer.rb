#!/usr/bin/env ruby

@digits = {
  1 => "one".length,
  2 => "two".length,
  3 => "three".length,
  4 => "four".length,
  5 => "five".length,
  6 => "six".length,
  7 => "seven".length,
  8 => "eight".length,
  9 => "nine".length,
  10 => "ten".length,
  11 => "eleven".length,
  12 => "twelve".length,
  13 => "thirteen".length,
  14 => "fourteen".length,
  15 => "fifteen".length,
  16 => "sixteen".length,
  17 => "seventeen".length,
  18 => "eighteen".length,
  19 => "nineteen".length
}

@tens = {
  2 => "twenty".length,
  3 => "thirty".length,
  4 => "forty".length,
  5 => "fifty".length,
  6 => "sixty".length,
  7 => "seventy".length,
  8 => "eighty".length,
  9 => "ninety".length
}

def number(n)
  if n < 20 then
    @digits[n]
  elsif n < 100 then
    tens_d = n / 10
    remainder = n - tens_d * 10
    if remainder == 0
      @tens[tens_d]
    else
      @tens[tens_d] + number(remainder)
    end
  elsif n < 1000
    hundreds_d = n / 100
    remainder = n - hundreds_d * 100
    if remainder == 0
      @digits[hundreds_d] + "hundred".length
    else
      @digits[hundreds_d] + "hundred".length + "and".length + number(n - hundreds_d * 100)
    end
  elsif n == 1000
    "onethousand".length
  else
    0
  end
end

puts (1..1000).reduce(0) {|acc, i| acc + number(i)}
