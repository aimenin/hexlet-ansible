ad-hoc:
	ansible all -i inventory.ini -u root -m ping

install-packages:
	ansible-playbook --check playbook-tags.yml -i inventory.ini -u root -t apt

create-users:
	ansible-playbook --check playbook-tags.yml -i inventory.ini -u root -t users