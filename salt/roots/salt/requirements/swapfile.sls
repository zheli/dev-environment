{% if grains['virtual'] != "VirtualBox" %}
#enable swap on VPS
/swapfile:
  cmd.run:
    - name: "fallocate -l 1G /swapfile && chmod 600 /swapfile && mkswap /swapfile"
    - unless: test -f /swapfile
  mount.swap:
    - require:
      - cmd: /swapfile
{% endif %}