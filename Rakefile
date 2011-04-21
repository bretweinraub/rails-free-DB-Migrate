
require File.join(File.dirname(__FILE__),'config','boot.rb') # -*-ruby-*-

task :default => :migrate
desc "Migrate the database through scripts in db/migrate. Target specific version with VERSION=x"

namespace :db do 
task :migrate => :environment do
  ActiveRecord::Migrator.migrate('db/migrate', ENV["VERSION"] ? ENV["VERSION"].to_i : nil )
end
end

task :environment do
  ActiveRecord::Base.logger = Logger.new("database.log")
end
