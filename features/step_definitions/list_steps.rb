Given(/^I have the following elements$/) do |table|
  puts table.hashes
  table.hashes.each do |element|
    Store.add element
  end
end

When(/^I find an element with id (\d+)$/) do |id|
  @result = Store.find id
end

Then(/^I should get "([^"]*)"$/) do |name|
  expect(@result['name']).to eq name
end

Transform /table:id,name/ do |table|
  table.map_column!(:id) { |cell| cell.to_i }
  table.map_headers!('id' => 'MY ID') { |header| header.upcase }
  table
end
