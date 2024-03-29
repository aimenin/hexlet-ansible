ad-hoc:
	ansible all -i inventory.ini -u root -m ping

install-packages:
	ansible-playbook --check playbook-tags.yml -i inventory.ini -u root -t apt

create-users:
	ansible-playbook --check playbook-tags.yml -i inventory.ini -u root -t users

install-all-packages:
	ansible-playbook playbook-nginx.yml -i inventory.ini -u root -t installing

files-nginx:
	ansible-playbook playbook-nginx.yml -i inventory.ini -u root -t files

test-facts:
	ansible-playbook playbook-facts.yml -i inventory.ini -u root

make-users:
	ansible-playbook playbook-loops.yml -i inventory.ini -u root

manage-filteres:
	ansible-playbook playbook-filteres

cowsay:
	ansible-playbook playbook-register.yml -i inventory.ini -u root

roles:
	ansible-playbook playbook-roles.yml -i inventory.ini -u root