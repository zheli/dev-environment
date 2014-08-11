essential-packages:
  pkg.latest:
    - pkgs:
      - vim-nox
      - sysstat
      - build-essential
      - openssh-server
      - language-pack-en
      - htop
      # We need this to recognize rxvt terminal
      - ncurses-term
      - bash
      - git
      # Python stuff
      - python-pip
      - python-virtualenv
      - python-dev

/home/vagrant/.config:
  file.directory:
    - user: vagrant
    - group: vagrant
    - mode: 700
    - require:
      - user: vagrant-user

vagrant-user
  user.present:
    - name: vagrant
    - shell: /bin/bash
    - home: /home/vagrant
    - gid_from_name: True
    - group:
      - adm
      - dip
      - plugdev