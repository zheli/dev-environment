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

virtualenv:
  pip.installed:
  - name: virtualenvwrapper

