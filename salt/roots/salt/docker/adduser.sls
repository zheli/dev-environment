{% for user, _ in salt['pillar.get']('users', {}).iteritems() %}

add-current-user:
  cmd.run:
    - name: sudo usermod -aG docker {{ user }}

{% endfor %}
