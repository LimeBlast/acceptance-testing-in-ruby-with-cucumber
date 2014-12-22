Given(/^I have a calculator$/) do
  @calculator = Calculator.new
end

When(/^I add (\d+) and (\d+)$/) do |arg1, arg2|
  @result = @calculator.add arg1.to_i, arg2.to_i
end

When(/^I multiply (\d+) and (\d+)$/) do |arg1, arg2|
  @result = @calculator.multiply arg1.to_i, arg2.to_i
end

Then(/^the result should be (\d+)$/) do |expected|
  @result.must_equal expected
end

Transform /^(\d+)$/ do |number|
  number.to_i
end
