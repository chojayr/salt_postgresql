### salt-pg


####  A State file to set-up PostgreSQL(community EDB) on a single node instance

#### Can only be run on Centos 6.x

#### For Masterless Minion only



#### Uncomment and set file_client as "local" on /etc/salt/minion
file_client: local

#### Define file_roots:
file_roots:
  base:
    - /srv/salt

#### Run:
$ salt-call --local state.highstate 

