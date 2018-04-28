docker:
 pkgrepo.managed:
   - name: "deb https://download.docker.com/linux/ubuntu xenial stable"
   - dist: xenial
   - file: /etc/apt/sources.list.d/docker.list
   - key_url: https://download.docker.com/linux/ubuntu/gpg
   - require_in:
     - pkg: docker
 pkg.installed:
   - pkgs:
     - docker-ce
   - refresh: True
