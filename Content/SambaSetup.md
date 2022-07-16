# Install samba server

Install **samba** and **samba-common-bin** on the Raspberry pi. Follow some of the tutorials:

* <https://pimylifeup.com/raspberry-pi-samba/>
* <https://magpi.raspberrypi.com/articles/samba-file-server>
* <https://tutorials-raspberrypi.com/raspberry-pi-samba-server-share-files-in-the-local-network/>

# Configure the samba server

We want to share the two partitions of the M.2 disk [created in earlier](PrepareHardwareAndStorage.md).
These are mapped to folders **/mnt/Shared_Backup** and **/mnt/Shared_Nobackup**, but we want them to be accessible under different names.

Again, follow the tutorials mentioned above starting with

`sudo nano /etc/samba/smb.conf`

Here is how the configuration should look like:

```text
[Shared]
Comment = Raspberry Pi Shared Folder (Backup)
Path = /mnt/Shared_Backup
Browseable = yes
Writeable = yes
only guest = no
create mask = 0777
directory mask = 0777
Public = yes
Guest ok = yes

[Nobackup]
Comment = Raspberry Pi Shared Folder (No backup)
Path = /mnt/Shared_Nobackup
Browseable = yes
Writeable = yes
only guest = no
create mask = 0777
directory mask = 0777
Public = yes
Guest ok = yes
```

Note that the names in the brackets, i.e. **Shared** and **Nobackup** will be the folder names you want to access, e.g. ***\\raspberrypi\Shared**.