#Ansible-test-lab
This docker services will construct an Ansible play area which can be used to test and experiment with ansible in a lightwieght environment.  By default it will construct a server and client but this can be extended to create swarm services of multiple nodes and different type.

Inventory can be generated using gen_hosts.sh as each client will log itself to /opt/data/hosts and clients are defined by environment variable HOSTTYPE. So you could create a web,db,lb,jump containers etc.

Connect to the server instance using bash and from there you can generate your inventory list and start using ansible directly. The volume mapping /opt/data can be mounted from anywhere so can include recipes, playbooks etc for testing.

Example usage:
Docker host:
	./build.sh

	docker exec -ti ansible_server_1 /bin/bash

Server:

	/gen_hosts.sh

	ansible -u test -i /opt/data/playbooks/hosts -m ping all
	ansible -b -m command -a "yum list installed" CLIENT
	