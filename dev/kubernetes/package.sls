kubernetes:
 pkgrepo.managed:
   - name: "deb http://apt.kubernetes.io/ kubernetes-xenial main"
   - dist: kubernetes-xenial
   - file: /etc/apt/sources.list.d/kubernetes.list
   - key_url: https://packages.cloud.google.com/apt/doc/apt-key.gpg
   - require_in:
     - pkg: kubernetes
 pkg.installed:
   - pkgs:
     - kubelet
     - kubeadm
     - kubectl
   - refresh: True
