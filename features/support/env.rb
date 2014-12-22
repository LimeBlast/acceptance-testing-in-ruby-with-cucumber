require 'awesome_print'

Before do |scenario|
  if scenario.class.to_s.include? 'Scenario'
    ap scenario.title
  else
    ap scenario.scenario_outline.title
  end
end

After do |scenario|
  Cucumber.wants_to_quit = true if scenario.failed?
end
