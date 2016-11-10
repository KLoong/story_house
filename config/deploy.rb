# config valid only for current version of Capistrano
lock '3.6.1'

set :application, 'story_house'
set :scm, :git
set :repo_url, 'git@github.com:KLoong/story_house.git'
set :branch, 'master'

set :log_level, :debug
# rbenv
set :rbenv_type, :user
set :rbenv_ruby, '2.1.2'
set :rbenv_prefix, "RBENV_ROOT=#{fetch(:rbenv_path)} RBENV_VERSION=#{fetch(:rbenv_ruby)} #{fetch(:rbenv_path)}/bin/rbenv exec"
set :rbenv_map_bins, %w{rake gem bundle ruby rails}

# how many old releases do we want to keep, not much
set :keep_releases, 5


# files we want symlinking to specific entries in shared
# set :linked_files, %w{config/database.yml config/application.rb config/secrets.yml}

# dirs we want symlinking to shared
# set :linked_dirs, %w{bin log tmp/pids tmp/cache tmp/sockets vendor/bundle public/system}

namespace :deploy do
  #ENV['BUNDLE_GEMFILE'] = "#{deploy_to}/current/Gemfile"
  desc 'Restart application'
    task :restart do
      invoke 'unicorn:stop'
      sleep 2
      invoke 'unicorn:start'
    end

  task :stop do
    invoke 'unicorn:stop'
  end

  desc 'Start application'
  task :start do
    invoke 'unicorn:start'
  end

end
# Default branch is :master
# ask :branch, `git rev-parse --abbrev-ref HEAD`.chomp

# Default deploy_to directory is /var/www/my_app_name
# set :deploy_to, '/var/www/my_app_name'

# Default value for :scm is :git
# set :scm, :git

# Default value for :format is :pretty
# set :format, :pretty

# Default value for :log_level is :debug
# set :log_level, :debug

# Default value for :pty is false
# set :pty, true

# Default value for :linked_files is []
# set :linked_files, fetch(:linked_files, []).push('config/database.yml', 'config/secrets.yml')

# Default value for linked_dirs is []
# set :linked_dirs, fetch(:linked_dirs, []).push('log', 'tmp/pids', 'tmp/cache', 'tmp/sockets', 'vendor/bundle', 'public/system')

# Default value for default_env is {}
# set :default_env, { path: "/opt/ruby/bin:$PATH" }

# Default value for keep_releases is 5
# set :keep_releases, 5

# namespace :deploy do

#   after :restart, :clear_cache do
#     on roles(:web), in: :groups, limit: 3, wait: 10 do
#       # Here we can do anything such as:
#       # within release_path do
#       #   execute :rake, 'cache:clear'
#       # end
#     end
#   end

# end


# config valid only for Capistrano 3.1
# lock '3.2.1'

# set :application, 'yamaha_music_school'
# set :scm, :git
# set :repo_url, 'ssh://git@114.80.200.91:10022/home/git/repos/yamaha_music_school.git '
# set :branch, 'master'

# set :log_level, :debug
# # set :asset_env, "RAILS_GROUPS=assets"

# set :linked_dirs, %w{bin log tmp/pids tmp/cache tmp/sockets bundle public/system public/assets public/uploads public/minisite/music_school/uploads  config/unicorn  }
# set :linked_files, %w{ config/database.yml }
    
# set :rbenv_type, :user         
# set :rbenv_map_bins, %w{rake gem bundle ruby rails}
# set :bundle_flags, "--deployment --binstubs"


# namespace :deploy do
#   #ENV['BUNDLE_GEMFILE'] = "#{deploy_to}/current/Gemfile"
#   desc 'Restart application'
#     task :restart do
#       invoke 'unicorn:stop'
#       sleep 2
#       invoke 'unicorn:start'
#     end

#   task :stop do
#     invoke 'unicorn:stop'
#   end

#   desc 'Start application'
#   task :start do
#     invoke 'unicorn:start'
#   end

# end
# set :default_env, { rvm_bin_path: '~/.rvm/bin' }
