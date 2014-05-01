essential-packages:
  pkg.installed:
    - names:
      - vim-nox
      - sysstat
      - build-essential
      - openssh-server
      - language-pack-en
      # We need this to recognize rxvt terminal
      - ncurses-term
      - bash
      - git
      # Python stuff
      - python-pip
      - python-virtualenv
      - python-dev