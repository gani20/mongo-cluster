# Mongo Cluster (Replicaset)

## Custom Chef JSON for Amazon OpsWorks

```
{
  "mongodb" : {
    "config": {
      "auth": true,
      "replSet": "mongo-rs"
    },
    "cluster_name": "mongo-cluster",
    "auto_configure": {
      "replicaset": true
    },
    "key_file_content": "foo",
    "admin": {
      "username": "baradmin",
      "password": "bar"
    },
    "users": [
      {
        "username": "bazuser",
        "password": "baz"
      }
    ]
  }
}
```
