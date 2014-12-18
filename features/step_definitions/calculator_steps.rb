require 'minitest/autorun'
require 'minitest/assertions'
require 'minitest/test'

module Assertions
  attr_accessor :assertions
end

World(Minitest::Assertions)
World(Assertions)

Before { self.assertions = 0 }

Given(/^I have a calculator$/) do
  @calculator = Calculator.new
end

When(/^I add (\d+) and (\d+)$/) do |arg1, arg2|
  @result = @calculator.add arg1.to_i, arg2.to_i
end

Then(/^the result should be (\d+)$/) do |arg1|
  assert_equal(@result, arg1.to_i)
end
