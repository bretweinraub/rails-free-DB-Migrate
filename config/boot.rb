require 'rubygems'
require 'active_record'
require 'log4r'
include Log4r

PROJECT_ROOT = File.expand_path(File.join(File.dirname(__FILE__), ".."))
CONFIG_ROOT = File.dirname(__FILE__)

DB_CONFIG = YAML::load(File.open("#{CONFIG_ROOT}/database.yml"))

ENVIRONMENT = ENV["RAILS_ENV"] || "development"

ActiveRecord::Base.establish_connection(DB_CONFIG[ENVIRONMENT])

