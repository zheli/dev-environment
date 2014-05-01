virtualenvwrapper:
  pip.installed:
    - require:
      - pkg: python-pip
      - pkg: python-virtualenv