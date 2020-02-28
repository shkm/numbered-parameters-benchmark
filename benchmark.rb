require 'benchmark/ips'

HASH = { a: 1, b: 2, c: 3 }.freeze

Benchmark.ips do |benchmark|
  benchmark.report("named params") do
    HASH.map { |a, b| [a, b] }
  end

  benchmark.report("numbered params") do
    HASH.map { [_1, _2] }
  end

  benchmark.compare!
end
