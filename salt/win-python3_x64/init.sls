{% if "Windows" == grains["os"]  %}

windows_pkgs:
  pkg.installed:
    - pkgs:
      - python3_x64
#  cmd.run:
    # https://github.com/microsoft/vscode/issues/136874
    #- name: 'set NODE_OPTIONS=--throw-deprecation; code --install-extension ms-python.python'
#    - name: 'code --install-extension ms-python.python --force'

{% else %}

others:
  test.succeed_without_changes:
    - name: No changes in Linux machines.

{% endif %}
