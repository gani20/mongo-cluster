include_recipe "mongodb::10gen_repo"
include_recipe "mongodb::replicaset"

# Temporary fix for https://github.com/edelight/chef-mongodb/issues/316
file('/etc/mongod.conf') { action :delete }
file('/etc/init.d/mongod') { action :delete }
file('/etc/init/mongod.conf') { action :delete }