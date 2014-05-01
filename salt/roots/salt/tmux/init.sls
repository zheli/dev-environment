tmux:
  pkg:
    - installed

/home/vagrant/.tmux.conf:
  file:
    - managed
    - source: salt://tmux/tmux.conf 