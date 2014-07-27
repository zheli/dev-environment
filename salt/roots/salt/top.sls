base:
  '*':
    - requirements.essential
    - shell-setup
    - tmux
    - vim
  'docker-srv':
    - requirements.swapfile
    - docker