# server-based syntax
# ======================
# Defines a single server with a list of roles and multiple properties.
# You can define all roles on a single server, or split them:

 server "159.89.122.175", user: "root", roles: %w{www-data}


# Configuration
# =============
# You can set any configuration variable like in config/deploy.rb
# These variables are then only loaded and set in this stage.
# For available Capistrano configuration variables see the documentation page.
# http://capistranorb.com/documentation/getting-started/configuration/
# Feel free to add new variables to customise your setup.

set :deploy_to, '/var/www/html/'
set :repo_url, "git@github.com:andrewheins/hammernnails.git"

ask :branch, proc { `git rev-parse --abbrev-ref HEAD`.chomp }

set :ssh_options, {:forward_agent => true}

# Default value for :linked_files is []
set :linked_files, fetch(:linked_files, []).push('.htaccess', 'wp-config.php', 'sitemap.xml', 'robots.txt');

# Default value for linked_dirs is []
set :linked_dirs, fetch(:linked_dirs, []).push('wp-content/uploads')


