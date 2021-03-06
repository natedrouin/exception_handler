#####################################################

# This file was generated by the `rspec --init` command. Conventionally, all
# specs live under a `spec` directory, which RSpec adds to the `$LOAD_PATH`.
# Require this file using `require "spec_helper"` to ensure that it is only
# loaded once.
#
# See http://rubydoc.info/gems/rspec-core/RSpec/Core/Configuration

#####################################################

#Coveralls
require 'coveralls'
Coveralls.wear!

#Env
#Need to generate "dummy" rails app -- BEST done with rails plugin new [[plugin_name]]
#http://stackoverflow.com/a/7472277/1143732
#http://guides.rubyonrails.org/plugins.html
ENV["RAILS_ENV"] ||= 'test'
require File.expand_path("../dummy/config/environment.rb", __FILE__)
require 'rails'

#Files
ENGINE_RAILS_ROOT=File.join(File.dirname(__FILE__), '../')
Dir[File.join(ENGINE_RAILS_ROOT, "spec/support/**/*.rb")].each {|f| require f }

###########################################

#Messages
puts "Testing Against Rails #{Rails.version}"

#Options
config = YAML::load(IO.read(File.dirname(__FILE__) + '/database.yml'))

###########################################
###########################################

RSpec.configure do |config|
  config.run_all_when_everything_filtered = true
  config.filter_run :focus

  # Run specs in random order to surface order dependencies. If you find an
  # order dependency and want to debug it, you can fix the order by providing
  # the seed, which is printed after each run.
  #     --seed 1234
  config.order = 'random'
end

###########################################
###########################################

require "exception_handler"

#####################################################