# k3d-vagrant

- `$ vagrant up`
- `$ vagrant ssh master`
- `$ k3d cluster create mycluster --volume ${PWD}/src:/src@server:0`
- `vagrant@master:~$ kubectl get nodes`
- `vagrant@master:~$ kubectl cluster-info`
- `vagrant@master:~$ docker ps	# list all running k3d containers`
- `vagrant@master:~$ kubectl create -f /vagrant/simple-webserver-deployment.yaml`
- `vagrant@master:~$ kubectl create -f /vagrant/simple-webserver-service.yaml`
- `vagrant@master:~$ kubectl get pod -o wide`
- `vagrant@master:~$ kubectl get deployment`
- `vagrant@master:~$ kubectl get service  # note <service-assigned-port>`
- `vagrant@master:~$ kubectl get node -o wide  # note <node-ip-address>`
- `vagrant@master:~$ docker exec k3d-mycluster-server-0 crictl ps`
- `vagrant@master:~$ docker exec k3d-mycluster-server-0 crictl images`
- `vagrant@master:~$ curl http://<node-ip-address>:<service-assigned-port>`

