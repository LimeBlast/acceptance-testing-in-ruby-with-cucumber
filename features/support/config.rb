require 'minitest/autorun'
require 'minitest/assertions'
require 'minitest/test'

module Assertions
  attr_accessor :assertions
end

World(Minitest::Assertions)
World(Assertions)

Before { self.assertions = 0 }
