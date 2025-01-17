require "bundler/setup"

require "sinatra/activerecord"
require 'ostruct'
require 'date'
require 'rake'
require 'ostruct'

Bundler.require

DBNAME = 'halloween'

Dir[File.join(File.dirname(__FILE__), "../app/models", "*.rb")].each {|f| require f}
Dir[File.join(File.dirname(__FILE__), "../lib/support", "*.rb")].each {|f| require f}

connection_details = YAML::load(File.open('config/database.yml'))


ActiveRecord::Base.establish_connection(connection_details)
