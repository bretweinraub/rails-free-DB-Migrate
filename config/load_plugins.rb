
Dir.glob(File.join(PROJECT_ROOT,'vendor','plugins','**')).each do |plugin|
  File.join(plugin,"lib")
  $:.push File.expand_path(File.join(plugin,"lib")) # add to load path
  require File.basename(plugin)
end

