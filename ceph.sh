ceph osd pool create volumes 32
ceph osd pool create backups 8
ceph osd pool create images 8
ceph osd pool create vms 8

ceph auth get-or-create client.cinder mon 'allow r' osd 'allow class-read object_prefix rbd_children, allow rwx pool=volumes, allow rwx pool=vms, allow rx pool=images'
ceph auth get-or-create client.cinder-backup mon 'allow r' osd 'allow class-read object_prefix rbd_children, allow rwx pool=backups'
ceph auth get-or-create client.glance mon 'allow r' osd 'allow class-read object_prefix rbd_children, allow rwx pool=images'

mkdir -p /etc/kolla/config/glance/
mkdir  /etc/kolla/config/cinder/
mkdir  /etc/kolla/config/nova/
mkdir  /etc/kolla/config/cinder/cinder-volume/
mkdir  /etc/kolla/config/cinder/cinder-backup/

ceph auth get-or-create client.glance > /etc/kolla/config/glance/ceph.client.glance.keyring
cp /etc/ceph/ceph.conf /etc/kolla/config/glance/
ceph auth get-or-create client.cinder> /etc/kolla/config/cinder/cinder-volume/ceph.client.cinder.keyring
ceph auth get-or-create client.cinder> /etc/kolla/config/cinder/cinder-backup/ceph.client.cinder.keyring
ceph auth get-or-create client.cinder-backup > /etc/kolla/config/cinder/cinder-backup/ceph.client.cinder-backup.keyring
cp /etc/ceph/ceph.conf /etc/kolla/config/cinder/cinder-volume/
cp /etc/ceph/ceph.conf /etc/kolla/config/cinder/cinder-backup/
ceph auth get-or-create client.cinder> /etc/kolla/config/nova/ceph.client.cinder.keyring
cp /etc/ceph/ceph.conf /etc/kolla/config/nova/
