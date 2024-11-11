
### NOTE 

The latest Ubuntu 24.04 LTS is not yet supported. Docker Desktop will fail to start. Due to a change in how the latest Ubuntu release restricts the unprivileged namespaces, 

```shell
  sudo sysctl -w kernel.apparmor_restrict_unprivileged_userns=0
```

needs to be run at least once. 