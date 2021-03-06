﻿.. module:: LinuxUdevReadme
    :synopsis: udev README
  
 

.. index::
   udev daemon
   http://git.kernel.org/?p=linux/hotplug/udev.git;a=blob;f=README;h=6e09b3a52da14540adf82a03a650a3df1bd0d750;hb=HEAD
   
   
.. _udev_readme:

===========
udev README
===========


Source: http://git.kernel.org/?p=linux/hotplug/udev.git;a=blob;f=README;h=6e09b3a52da14540adf82a03a650a3df1bd0d750;hb=HEAD


udev - Linux userspace device management
========================================
 
Integrating udev in the system has complex dependencies and may differ from
distribution to distribution. A system may not be able to boot up or work
reliably without a properly installed udev version. The upstream udev project
does not recommend to replace a distro's udev installation with the upstream
version.

The upstream udev project's set of default rules may require a most recent
kernel release to work properly.

Tools and rules shipped by udev are not public API and may change at any time.
Never call any private tool in /lib/udev from any external application, it might
just go away in the next release. Access to udev information is only offered
by udevadm and libudev. Tools and rules in /lib/udev, and the entire content of
the /dev/.udev directory is private to udev and does change whenever needed.

Requirements
============


- Version 2.6.27 of the Linux kernel with sysfs, procfs, signalfd, inotify,
  unix domain sockets, networking and hotplug enabled::
    
        CONFIG_HOTPLUG=y
        CONFIG_UEVENT_HELPER_PATH=""
        CONFIG_NET=y
        CONFIG_UNIX=y
        CONFIG_SYSFS=y
        CONFIG_SYSFS_DEPRECATED*=n
        CONFIG_PROC_FS=y
        CONFIG_TMPFS=y
        CONFIG_INOTIFY_USER=y
        CONFIG_SIGNALFD=y
        CONFIG_TMPFS_POSIX_ACL=y (user ACLs for device nodes)
        CONFIG_BLK_DEV_BSG=y (SCSI devices)
        

- Udev will not work with the CONFIG_SYSFS_DEPRECATED* option.

- Unix domain sockets (CONFIG_UNIX) as a loadable kernel module may work,
  but it is not supported.

- The deprecated hotplug helper /sbin/hotplug should be disabled in the
  kernel configuration, it is not needed today, and may render the system
  unusable because the kernel may create too many processes in parallel
  so that the system runs out-of-memory.

- The proc filesystem must be mounted on /proc, the sysfs filesystem must
  be mounted at /sys. No other locations are supported by a standard
  udev installation.

- The system must have the following group names resolvable at udev startup:
  disk, cdrom, floppy, tape, audio, video, lp, tty, dialout, kmem.
  Especially in LDAP setups, it is required, that getgrnam() is able to resolve
  these group names with only the rootfs mounted, and while no network is
  available.

- To build all 'udev extras', libacl, libglib2, libusb, usbutils, pciutils,
  gperf are needed. These dependencies can be disabled with the
  disable-extras configure option.

Setup
=====

- At bootup, the /dev directory should get the 'devtmpfs' filesystem
  mounted. Udev will manage permissions and ownership of the kernel-created
  device nodes, and possibly create additional symlinks. If needed, udev also
  works on an empty 'tmpfs' filesystem, but some static device nodes like
  /dev/null, /dev/console, /dev/kmsg are needed to be able to start udev itself.

- The content of /lib/udev/devices directory which contains static content like
  symlinks and directories, which are always expected to be in /dev, should
  be copied over to the mounted /dev directory::
  
    cp -axT --remove-destination /lib/udev/devices /dev

    
- The udev daemon should be started to handle device events sent by the kernel.
  During bootup, the kernel can be asked to send events for all already existing
  devices, to apply the configuration to these devices. This is usually done by::
  
    /sbin/udevadm trigger --type=subsystems
    /sbin/udevadm trigger --type=devices

    
- Restarting the daemon does never apply any rules to existing devices.

- New/changed rule files are picked up automatically, there is no daemon
  restart or signal needed.

Operation
=========

- Udev creates/removes device nodes in /dev, based on events the kernel
  sends out on device creation/removal.

- All kernel events are matched against a set of specified rules, which
  possibly hook into the event processing and load required kernel
  modules to setup devices. For all devices the kernel exports a major/minor
  number, if needed, udev will create a device node with the default kernel
  name. If specified, udev applies permissions/ownership to the device
  node, creates additional symlinks pointing to the node, and executes
  programs to handle the device.

- The events udev handles, and the information udev merges into its device
  database, can be accessed with libudev:
  
  -  http://www.kernel.org/pub/linux/utils/kernel/hotplug/libudev/
  -  http://www.kernel.org/pub/linux/utils/kernel/hotplug/gudev/

For more details about udev and udev rules see the udev(7) man page.

Please direct any comment/question to the linux-hotplug mailing list at:
linux-hotplug@vger.kernel.org

    
    









