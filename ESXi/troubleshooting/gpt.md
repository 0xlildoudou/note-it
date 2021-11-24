# GPT partition table is version 10000

    Warning: The format of the GPT partition table is version 10000, which is newer than what Parted can recognise.  Please tell us!  bug-parted@gnu.org
    Unable to construct disk from device /vmfs/devices/disks/xxxxxxxxxxxxxxxxx

## Reason

ESXi can't manage GPT partition.

## Troubleshooting

Connect on your ESXi and get sudo right

List your devices
```shell
esxcfg-scsidevs -c
```
```shell
Device UID                            Device Type      Console Device                                            Size      Multipath PluginDisplay Name        
naa.xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx  Direct-Access    /vmfs/devices/disks/<local disk 1>  457344MB  HPP     Local DELL Disk (naa.xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx)
naa.xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx  Direct-Access    /vmfs/devices/disks/<local disk 2>  7628800MB HPP     Local DELL Disk (naa.xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx)

```

For this tutorial, we use /vmfs/devices/disks/<local disk 2>

If you try to set the new disk with partedUtil, you can see the issue
```shell
partedUtil set /vmfs/devices/disks/<local disk 2>
```
```shell
0 0 0 0
Unsupported partition table (gpt) on disk. Only msdos supported
```

For fix this issue, set partition table with MBR
```shell
partedUtil setptbl /vmfs/devices/disks/<local disk 2> msdos
```
```shell
msdos
0 0 0 0
```

Now, your disk is ready and reconise by ESXi.