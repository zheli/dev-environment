squid3:
  pkg:
    - installed

/etc/squid3/squid.conf
  file:
    - managed
    - source: salt://squid/squid.conf 