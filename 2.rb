require_relative 'fibonacci'
require 'backports/2.0'

module Fibonacci
  def even_terms
    each_slice(3).lazy.map{|f_odd_1, f_odd_2, f_even| f_even}
  end
end

p Fibonacci
  .even_terms
  .take_while{|f| f < 4_000_000}
  .inject(:+)
