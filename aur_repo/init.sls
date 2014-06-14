abs_pkgs:
  pkg.installed:
    - refresh: True
    - pkgs:
      - abs
      - autoconf
      - automake
      - binutils
      - bison
      - fakeroot
      - file
      - findutils
      - flex
      - gawk
      - gcc
      - gettext
      - grep
      - groff
      - gzip
      - libtool
      - libutil-linux
      - m4
      - make
      - pacman
      - patch
      - pkg-config
      - sed
      - sudo
      - texinfo
      - util-linux
      - which

/etc/abs.conf:
  file.managed:
    - source: salt://aur_repo/files/abs.conf

abs:
  cmd:
    - run
    - require: abs_pkgs

abs2:
  cmd.run:
    - name: abs
    - require: abs
