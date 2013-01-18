require 'rspec'
require_relative '../fibonacci'

describe Fibonacci do
  specify { Fibonacci.first(6) == [1, 1, 2, 3, 5, 8] }
end
