neovim-dependencies:
   pkg.installed:
    - pkgs:
      - python-dev
      - python-pip
      - python3-dev
      - python3-pip
      
pkgrepo.managed:
- ppa: ppa:neovim-ppa/unstable
- require_in:
  - pkg: neovim

pkg.latest:
- name: neovim
- refresh: True