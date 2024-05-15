{% if "Windows" == grains["os"]  %}

windows_pkgs_cmds:
  pkg.installed:
    - pkgs:
      - vscode

# Ei toimi oikein. Toimii komentoriviltä ilman salt.
# https://github.com/microsoft/vscode/issues/136874
#  cmd.run:
#    - name: 'set NODE_OPTIONS=--throw-deprecation; code --install-extension ms-python.python'
#    - name: 'code --install-extension ms-python.python'

{% else %}

others:
  test.succeed_without_changes:
    - name: No changes in Linux machines.

{% endif %}
