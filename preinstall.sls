remi:
  pkgrepo.managed:
    - humanname: Remi's RPM repository for EL6 - $basearch
    - mirrorlist: http://rpms.remirepo.net/enterprise/6/remi/mirror
    - enabled: 1
    - gpgcheck: 0

pgadmin-deps:
  pkg.installed:
    - names:
      - openssl
      - openssl-devel
    - fromrepo: remi
    - require:
      - pkgrepo: remi

libxslt-pkg:
  pkg.installed:
    - names:
      - libxslt

/tmp/postgresql-linux-x64.run:
  file.managed:
    - source: salt://source/postgresql-9.5.1-1-linux-x64.run
    - user: ec2-user
    - group: ec2-user
    - mode: 775

install_pg:
  cmd.run:
    - name: sudo /tmp/postgresql-linux-x64.run --mode unattended --prefix /opt/PostgreSQL/9.5 --datadir /opt/PostgreSQL/9.5/data --superpassword {{ pillar['postgres']['superpass'] }}




  
