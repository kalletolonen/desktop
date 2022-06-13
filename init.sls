desktop-pkgs:
  pkg.installed:
    - pkgs:
      - ufw
      - micro
      - bash-completion
      - gimp
      - blender
      - python3
      - apache2
      - pwgen
      - sqlitebrowser
      - scrot
      - pandoc
      - rsync
      - tree
      - virtualenv

#scrot '1.png' -e 'mv $f ~/'
#pandoc -f markdown -t html h1.md -o 1.htm

/home/kallet/.config/micro/:
  file.directory

/home/kallet/.config/micro/settings.json:
  file.managed:
    - source: salt://desktop/settings.json

/home/kallet/.gitconfig:
  file.managed:
    - source: salt://desktop/.gitconfig

/etc/ufw/user.rules:
  file.managed:
    - source: salt://desktop/user.rules

ufw enable:
  cmd.wait:
    - watch:
      - pkg: desktop-pkgs

/usr/local/bin/fd:
  file.managed:
    - source: salt://desktop/fd
    - user: root
    - group: root
    - mode: 755
