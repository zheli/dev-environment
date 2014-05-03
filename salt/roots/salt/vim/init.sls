vim:
  pkg:
    - installed

/home/vagrant/.vimrc:
  file:
    - managed
    - source: salt://vim/vimrc
    - mode: 664

/home/vagrant/.vim:
  file.directory:
    - user: vagrant
    - group: vagrant
    - template: jinja
    - mode: 775    

/home/vagrant/.vim/autoload:
  file.directory:
    - user: vagrant
    - group: vagrant
    - template: jinja
    - mode: 775

/home/vagrant/.vim/bundle:
  file.directory:
    - user: vagrant
    - group: vagrant
    - template: jinja
    - mode: 775

pathogen_source:
  git.latest:
    - name: https://github.com/tpope/vim-pathogen.git
    - target: /tmp/vim-pathogen

/home/vagrant/.vim/autoload/pathogen.vim:
  file.copy:
    - source: /tmp/vim-pathogen/autoload/pathogen.vim
    - force: true
    - require:
      - git: pathogen_source

powerline_source:
  git.latest:
    - name: https://github.com/Lokaltog/powerline.git
    - target: /home/vagrant/.vim/bundle/powerline

/home/vagrant/.config/powerline:
  file.directory:
    - user: vagrant
    - group: vagrant
    - template: jinja
    - mode: 775
    - require_in:
      - git: powerline_source

/home/vagrant/.config/powerline/:
  file.recurse:
    - source: salt://vim/powerline_config_files
    - force: true
    - require:
      - git: powerline_source
      - file: /home/vagrant/.config/powerline

solarized_source:
  git.latest:
    - name: git://github.com/altercation/vim-colors-solarized.git
    - target: /home/vagrant/.vim/bundle/solarized

nerdtree_source:
  git.latest:
    - name: https://github.com/scrooloose/nerdtree.git
    - target: /home/vagrant/.vim/bundle/nerdtree

autopairs_source:
  git.latest:
    - name: https://github.com/jiangmiao/auto-pairs.git
    - target: /home/vagrant/.vim/bundle/auto-pairs

tarbar_source:
  git.latest:
    - name: https://github.com/majutsushi/tagbar.git
    - target: /home/vagrant/.vim/bundle/tarbar