zsh:
  pkg:
    - installed

{% for user, _ in salt['pillar.get']('users', {}).iteritems() %}

oh-my-zsh-repo:
  git.latest:
    - name: https://github.com/robbyrussell/oh-my-zsh.git
    - rev: master
    - target: /home/{{ user }}/.oh-my-zsh
    - unless: "test -d /home/{{ user }}/.oh-my-zsh"
    - user: {{ user }}

change_shell:
  module.run:
    - name: user.chshell
    - m_name: {{ user }}
    - shell: /usr/bin/zsh

.zshrc:
  file.managed:
  - name: /home/{{ user }}/.zshrc
  - source: salt://zsh/files/zshrc
  - user: {{ user  }}
  - group: {{ user }}
  - mode: '0644'
  - template: jinja

{% endfor %}
