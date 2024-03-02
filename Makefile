check-connection:
	ansible all -i inventory/hosts.ini -m ping

init-cfg: check-connection
	ansible-playbook playbooks/init-cfg.yml -i inventory/hosts.ini

ansbile-work: one two three four

one:
	ansible-playbook playbooks/init-cfg.yml -i inventory/hosts.ini -t step1

two:
	ansible-playbook playbooks/init-cfg.yml -i inventory/hosts.ini -t step2

three:
	ansible-playbook playbooks/init-cfg.yml -i inventory/hosts.ini -t step3

four:
	ansible-playbook playbooks/nginx.yml -i inventory/hosts.ini
