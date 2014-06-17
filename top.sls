base:
  'os_family:Arch':
    - match: grain
    - base
    - users
  'os_family:Debian':
    - match: grain
    - base
    - users
  'G@role:aur_repo':
    - match: compound
    - aur_repo
  'G@role:coldfusion':
    - match: compound
    - base
    - coldfusion
  'G@role:docker':
    - match: compound
    - docker
  'G@role:irssi':
    - match: compound
    - irssi
  'G@role:master':
    - match: compound
    - salt.master
  'G@role:mesos':
    - match: compound
    - mesos
  'G@role:spigot':
    - match: compound
    - java
    - spigot
