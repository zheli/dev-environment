neovim-dependencies:
   pkg.installed:
    - pkgs:
      - python-dev
      - python-pip
      - python3-dev
      - python3-pip
      
neovim-ppa:
  pkgrepo.managed:
    - ppa: neovim-ppa/unstable
    - require_in:
  pkg.latest:
    - name: neovim
    - refresh: True
