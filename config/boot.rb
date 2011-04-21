
require 'rubygems'
require 'active_record'
require 'log4r'
include Log4r

ProjectRoot = File.expand_path(File.join(File.dirname(__FILE__),'..'))
ConfigRoot = File.dirname(__FILE__)

DatabaseConfig = YAML::load(File.open("#{ConfigRoot}/database.yml"))

RAILS_ENV=ENV['RAILS_ENV'] || "development"

ActiveRecord::Base.establish_connection(DatabaseConfig[RAILS_ENV])

require 'config/load_plugins'

