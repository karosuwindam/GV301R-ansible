ANSIBLE_CMD := ANSIBLE_STDOUT_CALLBACK=yaml ANSIBLE_LOG_PATH=logs/install.`date +%Y%m%d%H%M%S`.log ansible-playbook -i inventory/hosts

kubernetes:
	$(ANSIBLE_CMD) kubernetes.yml
containerd:
	$(ANSIBLE_CMD) containerd.yml
oscheck:
	$(ANSIBLE_CMD) check.yml
go:
	$(ANSIBLE_CMD) go.yml
docker:
	$(ANSIBLE_CMD) docker.yml
