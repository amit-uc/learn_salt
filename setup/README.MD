
**Make sure you have a folder /etc/salt**
```bash
mkdir -p /etc/salt
cd /etc/salt
```
You should create two directories here  
- minio.d
- master.d

```bash
mkdir minion.d
mkdir master.d
```
Whatever configuration we want the salt to know we have to mention them in master.d inside a file named conf
We will define the environments the salt needs to use
- vi root.conf
```bash
file_roots:
  base:
    - /srv/salt/base
```
We need to create the folder  

**Configure a master**
Need to give the ip address and create a file in the minion.d and name it master.conf
```bash
master: localhost
```
Run it in the demeon mode  
```bash
salt-minion -d
```

```bash
salt-key
salt-key -d <name>
salt-key -a <name>

salt <name> test.ping
```

**Commands**
```bash
salt <name> cmd.run "ls /home"
```

**Create User**
```bash
salt <name> user.add "amit"
```


**Create User**
```bash
salt <name> user.delete "amit" remove=True
```

```bash
salt "salt-master_minion" pkg.install git
```

```bash
```

[Module packages](https://docs.saltstack.com/en/latest/ref/modules/all/salt.modules.aptpkg.html#module-salt.modules.aptpkg)
