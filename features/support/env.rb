require 'awesome_print'

ap 'beginning the whole suite'

at_exit do
  ap 'ending the whole suite'
end
