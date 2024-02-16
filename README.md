### Initial Server Setup with Ubuntu 22.04
[instructions](https://www.digitalocean.com/community/tutorials/initial-server-setup-with-ubuntu-22-04)
### Install ansible:
```bash
$ sudo pacman -S python3 
  && sudo pacman -S wget 
  && wget https://bootstrap.pypa.io/get-pip.py 
  && python get-pip.py 
  && python3 -m pip install --user ansible 
  && python3 -m pip install --user ansible-playbook 
  && ansible-galaxy collection install ansible.posix
```