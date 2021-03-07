# ansible-borg-backup-jail-setup

A repo for setting up a TrueNAS jail for running borg backup as client.

The scripts and playbooks in this repository are meant to be executed in the freebsd jail.

# How to use

1. Run following commands on a fresh jail to ensure you can install packages and clone this repo.

```sh
env ASSUME_ALWAYS_YES=YES pkg bootstrap
pkg update
pkg install git
```

## Resources:

- [1] https://www.cyberciti.biz/faq/how-to-enable-sshd-on-freebsd-server-jail/
