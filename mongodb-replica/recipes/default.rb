node.override['mongodb']['default_init_name'] = 'mongod'

include_recipe "mongodb::10gen_repo"
include_recipe "mongodb::replicaset"