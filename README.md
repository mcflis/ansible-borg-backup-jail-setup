# ansible-borg-backup-jail-setup

A repo for setting up a TrueNAS jail for running borg backup as client.

The scripts and playbooks in this repository are meant to be executed in the freebsd jail.

# How to use

1. Run following commands on a fresh jail to ensure you can install packages and clone this repo.

```sh
env ASSUME_ALWAYS_YES=YES pkg bootstrap
pkg update
pkg install -y git
```

2. Clone this repository into `ansible-setup`

```sh
git clone https://github.com/mcflis/ansible-borg-backup-jail-setup.git ansible-setup
```

3. Run the pre-ansible install script

```sh
ansible-setup/preansible/install.sh
```

4. Ensure ansible is working

```sh
ansible -m ping -c local localhost
```

5. Run ansible playbook

```sh
ansible-playbook ansible-setup/ansible/main.yml
```

## Resources:

- [1] https://www.cyberciti.biz/faq/how-to-enable-sshd-on-freebsd-server-jail/
