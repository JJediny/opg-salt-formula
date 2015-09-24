wget:
  pkg.installed: []

python:
  pkg.installed: []

pip install awscli:
  cmd.run

/usr/local/bin/ebs-snapshot.sh:
  file.managed:
    - source: salt://ebs-snapshot/templates/ebs-snapshot.sh
    - template: jinja
    - user: root
    - group: root
    - mode: 755

