essential-packages:
  pkg.installed:
    - names:
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