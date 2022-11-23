This documentation is for create a new virtual machine with existing .qcow2 disk.

## VM creation
In first, create the VM with a new disk.

When the VM is created, go to `Hardware`, select the new disk and click on `Detach`.

Now, the new disk is detached. Move your existing disk in the image location, by default is :
```shell
mv old.qcow2 /var/lib/vz/images/<vm_id>/
```
When your old disk are in VM folder, you need to modify the VM config.

## VM config
### Add disk
The VM config are locate in `/etc/pve/qemu-server/<vm_id>.conf`

In the conf you can see 2 importants infos : `boot:` and `unused0:`. There informations are for the boot sequence and for the unused disk.

For the first step, change the unused disk. Example : 

change ->
```shell
...
unused0: <storage>:<vm_id>/old.qcow2
...
```

to <-
```shell
...
unused0: <storage>:<vm_id>/new.qcow2
...
```

When is done, return on the webUI, refresh the hardware (F5) and edit the disk for reattach.

Now, in the file you can see the new disk with the Dbus/Device. Example for virtio :
```shell
...
virtio0: <storage>:<vm_id>/new.qcow2
...
```

Now your disk is set in your VM.

### Boot on new disk
If your disk is bootable, add your Dbus/Device in the boot order. Example for virtio :
```shell
...
boot: order=virtio0
...
```

Now you can start your VM and boot on the new disk 
