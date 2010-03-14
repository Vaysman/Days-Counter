#these settings are moved away from source control system for security reason
#set :application, ""
#set :repository,  ""
#set :deploy_to, ""
#set :user, ""
#server "", :web, :app, :db, :primary => true

load  File.expand_path(File.join(File.dirname(__FILE__), '..', '..', 'settings', 'counter_deploy.rb'))

set :scm, :git
set :use_sudo, false

namespace :deploy do
  task :start do ; end
  task :stop do ; end
  task :restart, :roles => :app, :except => { :no_release => true } do
    run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
  end
end