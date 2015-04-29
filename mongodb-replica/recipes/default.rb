node.override['mongodb']['default_init_name'] = 'mongod'

include_recipe "mongodb::mongodb_org_repo"
include_recipe "mongodb::replicaset"