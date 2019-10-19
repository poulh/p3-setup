# p3-setup

scripts to setup my mac for development

### clone repo and change directory

```
$ git clone https://github.com:poulh/p3-setup.git
$ cd p3-setup
```


### install package managers 

homebrew,pip,npm,ansible

```
$ ./install_mac_package_managers
```

see all commands

```
./install_mac_package_managers --help
usage: install_mac_package_managers [-h] [--dry-run] [--force] [--homebrew]
                                    [--no-homebrew] [--pip] [--no-pip] [--npm]
                                    [--no-npm] [--ansible] [--no-ansible]

Installs various programs required for Symbiont development. Most using
various package managers

optional arguments:
  -h, --help     show this help message and exit
  --dry-run      do not actually run the commands
  --force        run install command regardless if already installed
  --homebrew     Install just homebrew
  --no-homebrew  Skip installing homebrew
  --pip          Install just pip
  --no-pip       Skip installing pip
  --npm          Install just npm
  --no-npm       Skip installing npm
  --ansible      Install just ansible
  --no-ansible   Skip installing ansible
```

### run ansible playbook

prompts for less used applications

```
ansible-playbook p3_mac_playbook.yml
```
