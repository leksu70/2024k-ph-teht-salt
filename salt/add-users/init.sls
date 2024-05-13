{% if "Windows" == grains["os"]  %}

leos:
  user.present:
    - name: leos
    - password: leos
    - fullname: Leo S
    - groups:
      - Administrators

{% else %}
  {% if "Debian" == grains["os"] %}

leos:
  group.present:
    - gid: 1011
    - system: True
  user.present:
    - fullname: Leo S
    - shell: /bin/bash
    - home: /home/leos
    - uid: 1011
    - gid: 1011
    - groups:
      - users

  {% else %}

others:
  test.succeed_without_changes:
    - name: No changes in Linux machines except Debian.

  {% endif %}
{% endif %}
