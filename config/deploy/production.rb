set :ssh_options, {port: 22, keys: ['~/.vagrant.d/insecure_private_key']}

server '192.168.33.10', user: 'vagrant', roles: %w{web app db}