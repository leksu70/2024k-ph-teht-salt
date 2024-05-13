{% if "Windows" == grains["os"]  %}
windows_pkgs:
  pkg.installed:
    - pkgs:
      - python3_x64
{% else %}
others:
  test.succeed_without_changes:
    - name: No changes in Linux machines.
{% endif %}
