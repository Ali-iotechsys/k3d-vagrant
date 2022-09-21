# k3d-vagrant

- `$ vagrant up`
- `$ vagrant ssh master`
- `$ k3d cluster create mycluster --agents 3`
- `$ kubectl get nodes`
- `$ docker ps	# list all running k3d containers`
- `$ docker exec k3d-mycluster-server-0 /bin/ps | grep "k3s server"`
- `$ docker exec k3d-mycluster-agent-0 /bin/ps | grep "k3s agent"`
- `$ kubectl cluster-info`
