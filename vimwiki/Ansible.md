# Ansible

## Preparation
* create dedicated ansible ssh key (without passphrase): 
```
ssh-keygen -t ed25519 -C "ansible" -f $HOME/.ssh/ansible
ssh-copy-id -i ~/.ssh/ansible.pub <server-ip>
```

**Install:**
```
python3 pip install ansible
sudo apt install sshpass
```

**Folder Structure:**
```
└── ansible
        ansible.cfg
    ├── inventory
    │   └── hosts
    └── playbooks
        └── apt.yml
```

## ad-hoc commands

* `ansible all --key-file ~/.ssh/ansible -i inventory/hosts -m ping`
* `ansible all --list-hosts`
* `ansible all -m gather_facts`
* with sudo: `ansible all -m apt -a update_cache=true --become --ask-become-pass`
* Install al updates: `ansible all -m apt -a "upgrade=dist" --become --ask-become-pass`
* without inventory file: `ansible all -i 'gfa-dsv,' -m gather_facts`

## playbooks
```
ansible-playbook ./playbooks/apt.yml --ask-become-pass -i ./inventory/hosts
```

## inventory / hosts
```
[all:vars]
ansible_user=root
ansible_ssh_pass=root

[dbpm3]
DBPM3-RR82-0
```

