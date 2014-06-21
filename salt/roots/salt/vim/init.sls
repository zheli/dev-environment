vim:
  pkg:
    - installed

/home/{{ pillar['ssh-username'] }}/.vimrc:
  file:
    - managed
    - source: salt://vim/vimrc
    - mode: 664

/home/{{ pillar['ssh-username'] }}/.vim:
  file.directory:
    - user: {{ pillar['ssh-username'] }}
    - group: {{ pillar['ssh-username'] }}
    - template: jinja
    - mode: 775

/home/{{ pillar['ssh-username'] }}/.vim/autoload:
  file.directory:
    - user: {{ pillar['ssh-username'] }}
    - group: {{ pillar['ssh-username'] }}
    - template: jinja
    - mode: 775

/home/{{ pillar['ssh-username'] }}/.vim/bundle:
  file.directory:
    - user: {{ pillar['ssh-username'] }}
    - group: {{ pillar['ssh-username'] }}
    - template: jinja
    - mode: 775

pathogen_source:
  git.latest:
    - name: https://github.com/tpope/vim-pathogen.git
    - target: /tmp/vim-pathogen

/home/{{ pillar['ssh-username'] }}/.vim/autoload/pathogen.vim:
  file.copy:
    - source: /tmp/vim-pathogen/autoload/pathogen.vim
    - force: true
    - require:
      - git: pathogen_source

airline_source:
  git.latest:
    - name: https://github.com/bling/vim-airline
    - target: /home/{{ pillar['ssh-username'] }}/.vim/bundle/airline
    - force: true

solarized_source:
  git.latest:
    - name: git://github.com/altercation/vim-colors-solarized.git
    - target: /home/{{ pillar['ssh-username'] }}/.vim/bundle/solarized
    - force: true

tomorrow_source:
  git.latest:
    - name: https://github.com/chriskempson/tomorrow-theme.git
    - target: /home/{{ pillar['ssh-username'] }}/.vim/bundle/tomorrow
    - force: true

nerdtree_source:
  git.latest:
    - name: https://github.com/scrooloose/nerdtree.git
    - target: /home/{{ pillar['ssh-username'] }}/.vim/bundle/nerdtree
    - force: true

autopairs_source:
  git.latest:
    - name: https://github.com/jiangmiao/auto-pairs.git
    - target: /home/{{ pillar['ssh-username'] }}/.vim/bundle/auto-pairs
    - force: true

tarbar_source:
  git.latest:
    - name: https://github.com/majutsushi/tagbar.git
    - target: /home/{{ pillar['ssh-username'] }}/.vim/bundle/tarbar
    - force: true

fugitive_source:
  git.latest:
    - name: git://github.com/tpope/vim-fugitive.git
    - target: /home/{{ pillar['ssh-username'] }}/.vim/bundle/fugitive
    - force: true

ctrlp_source:
  git.latest:
    - name: https://github.com/kien/ctrlp.vim.git
    - target: /home/{{ pillar['ssh-username'] }}/.vim/bundle/ctrlp
    - force: true
