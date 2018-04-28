mkdir -p /etc/salt
cd /etc/salt
mkdir minion.d master.d
mkdir -p /srv/salt/dev
echo \
"file_roots:
  dev:
    - /srv/salt/dev" > /etc/salt/master.d/root.conf

echo "master: $(hostname)" > /etc/salt/minion.d/master.conf
