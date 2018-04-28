mkdir -p /etc/salt
cd /etc/salt
mkdir minion.d master.d

echo \
"file_roots:
  dev:
    - /home/ubuntu/learn_salt/base" > /etc/salt/master.d/root.conf

echo "master: $(hostname)" > /etc/salt/minion.d/master.conf
