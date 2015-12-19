#!/usr/bin/env python
# -*- coding: utf-8 -*-

from fabric.api import parallel, run
from fabric.operations import sudo, put


@parallel
def install_curl():
    '''
    Installs curl
    '''
    sudo("apt-get -y install curl")


@parallel
def apt_update():
    '''
    Runs apt-get update and upgrade
    '''
    sudo('apt-get -y update')
    sudo('apt-get -y upgrade')


def install_gitpython():
    '''
    Installs gitpython and dependencies
    '''
    sudo('apt-get install git python-git')


@parallel
def bootstrap_salt():
    '''
    Uses the salt bootstrap script (from bootstrap.saltstack.org) to install a
    salt-minion and run it as a daemon
    '''
    run("curl -L http://bootstrap.saltstack.org | sudo sh")


@parallel
def copy_minion_config():
    put('salt/minion', '/etc/salt/minion', use_sudo=True)


@parallel
def copy_salt_state():
    put('salt/roots/salt', '/srv', use_sudo=True)
    put('salt/roots/pillar', '/srv', use_sudo=True)


@parallel
def restart_minion():
    '''
    Restart a salt minion
    '''
    sudo("service salt-minion restart")


@parallel
def fullstrap_minions():
    '''
    Install saltstack, set master, restart the salt-minion daemon
    $ fab fullstrap_minions:master=127.0.0.1
    '''
    apt_update()
    install_curl()
    install_gitpython()
    bootstrap_salt()
    copy_minion_config()
    copy_salt_state()
    restart_minion()
    sudo('apt-get -y install vim')  # Sneaking this in to make life better
