neovim-dependencies:
   pkg.installed:
    - pkgs:
      - python-dev
      - python-pip
      - python3-dev
      - python3-pip

neovim:
  pip.installed:
    - name: neovim
    - require:
      - pkg: neovim-dependencies

neovim3:
  pip.installed:
    - name: neovim
    - bin_env: '/usr/bin/pip3'
    - require:
      - pkg: neovim-dependencies

neovim-ppa:
  pkgrepo.managed:
    - ppa: neovim-ppa/unstable
    - require_in:
  pkg.latest:
    - name: neovim
    - refresh: True

{% for user, _ in salt['pillar.get']('users', {}).iteritems() %}
neovim-config:
  git.latest:
    - name: https://github.com/zheli/neovim-config.git
    - target: /home/{{ user }}/src/neovim-config
    - require_in:
      - neovim-config-link

neovim-config-link:
  file.symlink:
    - name: /home/{{ user }}/.config/nvim
    - target: /home/{{ user }}/src/neovim-config
    - makedirs: True
    - user: {{ user }}
    - group: {{ user }}

# install-neovim-plugins:
#   cmd.run:
#     - name: nvim +PlugInstall +qall
#     - runas: {{ user }}
#     - require:
#       - file: neovim-config-link
# 
# setup-YCM:
#   cmd.run:
#     - name: ./install.py --clang-completer --tern-completer
#     - runas: {{ user }}
#     - require:
#       - cmd: install-neovim-plugins
{% endfor %}
