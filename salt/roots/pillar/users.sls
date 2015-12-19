users:
  zhe:
    fullname: Zhe Li
    sudouser: True
    empty_password: True
    home: /home/zhe
    ssh_auth_sources:
      - salt://keys/key.pub
    sudo_rules:
      - ALL=(ALL) NOPASSWD:ALL
    gitconfig:
      color.diff: auto
      color.branch: auto
      color.status: auto
      color.ui: true
      core.excludesfile: ~/.gitignore_global
      user.name: Zhe Li
      user.email: linuxcity.jn@gmail.com
      alias.st: status
      alias.co: checkout
    user_files:
      enabled: True
      source: salt://users/files/default
