# Mongo Replicaset cluster for AWS OpsWorks

## OpsWorks Stack configuration

- Chef version: **11.10**
- Use custom Chef cookbooks: **yes**
- Repository URL: **https://github.com/squallstar/mongo-cluster**
- Manage Berkshelf: **yes**
- Berkshelf version: **3.2.0**

## Custom JSON

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

After creating the first machine, log via **ssh** to **mongo**, create your users and trigger a **rs.initiate()**.

## Adding secondary nodes

Provision your new nodes, then log into the primary mongo and add the other machine as a replica:

```
rs.add("second-machine.example.org")
```
