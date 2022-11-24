ANSIBLE_CMD := ANSIBLE_STDOUT_CALLBACK=yaml ANSIBLE_LOG_PATH=logs/install.`date +%Y%m%d%H%M%S`.log ansible-playbook -i inventory/hosts
ANSIBLE_OPSION := --ask-become-pass

install:
	$(ANSIBLE_CMD) install.yml $(ANSIBLE_OPSION)
oscheck:
	$(ANSIBLE_CMD) check.yml $(ANSIBLE_OPSION)
smb:
	$(ANSIBLE_CMD) install-smb.yml $(ANSIBLE_OPSION)
game:
	$(ANSIBLE_CMD) install-game.yml $(ANSIBLE_OPSION)
