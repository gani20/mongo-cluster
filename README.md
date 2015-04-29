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
    "admin": {
      "username": "firstadmin",
      "password": "15ed76b1b1f8ab089198263832918290"
    },
    "users": [
      {
        "username": "firstuser",
        "password": "082ef89165545110e2204c8bec04b2c8"
      }
    ]
  }
}
```