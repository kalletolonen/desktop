micro:
  pkg.installed

/home/kallet/.config/micro/settings.json:
  file.managed:
    - source: salt://desktop/settings.json

bash-completion:
  pkg.installed

gimp:
  pkg.installed

blender:
  pkg.installed

python3:
  pkg.installed

apache2:
  pkg.installed

pwgen:
  pkg.installed

  
ssh:
  pkg.installed

git:
  pkg.installed

/home/kallet/.gitconfig:
  file.managed:
    - source: salt://desktop/.gitconfig

ufw:
  pkg.installed

/etc/ufw/user.rules:
  file.managed:
    - source: salt://desktop/user.rules

ufw enable:
  cmd.wait:
    - watch:
      - pkg: ufw

export EDITOR="micro":
  cmd.wait:
    - watch:
      - pkg: micro
