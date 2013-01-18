module Fibonacci
  include Enumerable
  def each
    return to_enum __method__ unless block_given?
    a = 0
    b = 1
    loop do
      a, b = b, a+b
      yield a
    end
  end
  extend self
end
