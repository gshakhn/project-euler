def factors(n)
  return [] if n == 1
  factor = (2..n).find {|f| n % f == 0}
  return [factor] + factors(n / factor)
end
