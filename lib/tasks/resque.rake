require 'resque/tasks'
require 'resque_scheduler/tasks'
namespace :resque do
  task :setup => :environment do
    require 'resque'
    require 'resque-scheduler'
  end
end
