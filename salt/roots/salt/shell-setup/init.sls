python-pip:
  pkg.installed

virtualenvwrapper:
  pip.installed:
    - require:
      - pkg: python-pip

/home/vagrant/Envs:
  file.directory:
    - user: vagrant
    - group: vagrant
    - template: jinja
    - mode: 775

/home/vagrant/.bashrc:
  file:
    - managed
    - user: vagrant
    - group: vagrant
    - source: salt://shell-setup/bashrc

/home/vagrant/.bashrc.user:
  file:
    - managed
    - user: vagrant
    - group: vagrant
    - source: salt://shell-setup/bashrc.user

/home/vagrant/.bash_prompt:
  file:
    - managed
    - user: vagrant
    - group: vagrant
    - source: salt://shell-setup/bash_prompt

/home/vagrant/.gitconfig:
  file:
    - managed
    - user: vagrant
    - group: vagrant
    - source: salt://shell-setup/gitconfig

/home/vagrant/.gitignore_global:
  file:
    - managed
    - user: vagrant
    - group: vagrant
    - source: salt://shell-setup/gitignore_global
