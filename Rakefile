require File.join(File.dirname(__FILE__), "config", "boot.rb")

task :default => :migrate
desc "Migrate the database through scripts in db/migrate. Target a specific migration with VERSION=x"

task :environment do
  ActiveRecord::Base.logger = Logger.new("database.log")
end

namespace :db do 
  task :migrate => :environment do
    ActiveRecord::Migrator.migrate("db/migrate", ENV["VERSION"] ? ENV["VERSION"].to_i : nil )
  end
end
