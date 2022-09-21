# k3d-vagrant

- `$ vagrant up`
- `$ vagrant ssh master`
- `$ k3d cluster create mycluster --agents 1  # Create Kubernetes Cluster`
- `vagrant@master:~$ kubectl get nodes`
- `vagrant@master:~$ kubectl cluster-info`
- `vagrant@master:~$ docker ps	# list all running k3d containers`
- `vagrant@master:~$ docker exec k3d-mycluster-server-0 /bin/ps | grep "k3s server"`
- `vagrant@master:~$ docker exec k3d-mycluster-agent-0 /bin/ps | grep "k3s agent"`

