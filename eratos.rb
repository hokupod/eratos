class Eratos
  attr_reader :base_num, :range, :threshold
  attr_accessor :primes

  def initialize(base_num)
    @base_num = base_num
    @range = (2..base_num).to_a
    @primes = []
    @threshold = Math.sqrt(base_num)
  end

  def sift
    dup_range = range.dup
    self.primes = []
    sieve(dup_range)
  end

  private

  def sieve(range)
    primes << first = range.shift
    range.reject! { |num| (num % first).zero? }
    return sieve(range) unless first > threshold
    primes.concat(range)
  end
end

if __FILE__ == $0
  input = ARGV.first.to_i
  eratos = Eratos.new input
  puts eratos.sift.join(', ')
end

