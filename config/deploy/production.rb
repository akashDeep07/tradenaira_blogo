# server '', user: 'ubuntu', roles: [:web, :app, :db, :worker], primary: true, ssh_options: { forward_agent: true }
# set :rails_env, :staging
# set :rack_env,  :staging
# set :stage,     :staging
# set :branch,    :develop


server '162.243.160.154', user: 'root', port: 22, roles: [:web, :app, :db], primary: true


set :stage, 					:production
set :branch, 					'master'
set :rails_env,       			:production
set :puma_env, 					:production


