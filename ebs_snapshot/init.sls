wget:
  pkg.installed: []

python:
  pkg.installed: []

pip install awscli:
  cmd.run

/usr/local/bin/ebs_snapshot.sh:
  file.managed:
    - source: salt://ebs_snapshot/templates/ebs_snapshot.sh
    - template: jinja
    - user: root
    - group: root
    - mode: 755

