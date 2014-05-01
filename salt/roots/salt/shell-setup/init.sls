virtualenvwrapper:
  pip.installed:
    - require:
      - pkg: python-pip
      - pkg: python-virtualenv

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