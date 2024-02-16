check-connection:
	ansible all -i inventory/hosts.ini -m ping

init-cfg: check-connection
	ansible-playbook playbooks/init-cfg.yml -i inventory/hosts.ini