{% if "Windows" == grains["os"]  %}
windows_pkgs:
  pkg.installed:
    - pkgs:
      - vscode
{% else %}
others:
  test.succeed_without_changes:
    - name: No changes in Linux machines.
{% endif %}
