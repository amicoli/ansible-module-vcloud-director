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
ansible-playbook reboot.yml


env_host: api.vcd.portal.skyscapecloud.com # Genomics England LTD
env_org: 235-365-1-01f7de # Genomics England LTD
env_host: api.vcd.pod00003.sys00004.portal.skyscapecloud.com # Genomics HPC
env_org: 235-365-6-b4af9c # Genomics HPC
