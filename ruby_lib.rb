def factors(n)
  return [] if n == 1
  factor = (2..n).find {|f| n % f == 0}
  return [factor] + factors(n / factor)
end

def primes_up_to(max)
  min = 2
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

  sieve.select {|k,v| v}.keys
end
