# Prepare hardware

Prepare your hardware and storage. Cloud not included, see [TODO RD: Create Mega.nz account and storage]().

## M.2 SSD Disk

I'm using a spare M.2 disk with capacity ~240 GB. Disk is in an M.2 to USB adapter case.
This disk will be split into 2 partitions, each accessible as a network share.

1. Connect the disk to Raspberry Pi.  
    The system should attach it as **/dev/sda**[^1]

2. Create two partitions e.g. using GParted:  

    1. First partition **sda1** will have ~64 GB. Use **exfat**[^2] file system.  
    This partition will be backed up to the flash disk and to cloud storage.

    2. Second partition **sda2** will have ~176 GB. Again, use **exfat** file system.  
    This partition will not be backed up.

## USB flash disk, 64 GB

1. Connect the disk to Raspberry Pi.  
    The system should attach it as **/dev/sdb**[^1].

2. Create a single partition **sdba** spanning the entire media.  
    Use **exfat**[^2] again.

[^1]: The device letter (sda, sdb, ...) depends on the system.  
[^2]: exfat file system is readable on Windows as well and it is more universal than FAT.
