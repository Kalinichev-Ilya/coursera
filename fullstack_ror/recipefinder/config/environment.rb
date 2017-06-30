# Load the Rails application.
require File.expand_path('../application', __FILE__)

ENV['FOOD2FORK_KEY'] = '8343ba866832d7ed6c38fdcc15abaa69'
ENV['FOOD2FORK_SERVER_AND_PORT'] = 'www.food2fork.com'

# Initialize the Rails application.
Rails.application.initialize!
