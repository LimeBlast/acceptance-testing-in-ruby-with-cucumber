Given(/^I have the following elements$/) do |table|
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
end
