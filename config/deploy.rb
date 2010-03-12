#TODO set <app_name>, <repo_name>, <user_name>
set :application, "<app_name>"
set :repository,  "git://git@github.com:Vaysman/<repo_name>.git"
set :deploy_to, "/home/<user_name>/projects/<app_name>"
set :user, "<user_name>"


# Because I have only a single server an alternative syntax uses the "server" keyword
server "<server_name>", :web, :app, :db, :primary => true

set :scm, :git
set :use_sudo, false

namespace :deploy do
  task :start do ; end
  task :stop do ; end
  task :restart, :roles => :app, :except => { :no_release => true } do
    run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
  end
end