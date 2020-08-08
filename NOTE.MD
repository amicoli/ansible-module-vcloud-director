# Ansible

ansible-playbook -i production site.yml

ansible-playbook -i production -m ping

# Build Docker
docker build -t ansible .
docker run -it --rm \
--name ansible_1 \
-v $(pwd):/ansible \
ansible bash

ansible-inventory --list -i vmware_vm_inventory.vmware.yml
