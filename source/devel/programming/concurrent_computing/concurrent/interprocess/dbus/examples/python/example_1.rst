﻿


============================================================================================================
http://stackoverflow.com/questions/469243/how-can-i-listen-for-usb-device-inserted-events-in-linux-in-python
============================================================================================================


You can use D-Bus bindings and listen to DeviceAdded and DeviceRemoved signals.
You will have to check the capabilities of the Added device in order to select
the storage devices only.

Here is a small example, you can remove the comments and try it::

    import dbus
    import gobject

    class DeviceAddedListener:
        def __init__(self):



You need to connect to Hal Manager using the System Bus::

    self.bus = dbus.SystemBus()
    self.hal_manager_obj = self.bus.get_object(
                                          "org.freedesktop.Hal",
                                          "/org/freedesktop/Hal/Manager")
    self.hal_manager = dbus.Interface(self.hal_manager_obj,
                                      "org.freedesktop.Hal.Manager")



And you need to connect a listener to the signals you are interested on, in this
case DeviceAdded::

    self.hal_manager.connect_to_signal("DeviceAdded", self._filter)


I'm using a filter based on capabilities. It will accept any volume and will
call do_something with if, you can read Hal documentation to find the more
suitable queries for your needs, or more information about the properties of
the Hal devices::


    def _filter(self, udi):
        device_obj = self.bus.get_object ("org.freedesktop.Hal", udi)
        device = dbus.Interface(device_obj, "org.freedesktop.Hal.Device")
        if device.QueryCapability("volume"):
            return self.do_something(device)



Example function that shows some information about the volume::

     def do_something(self, volume):
        device_file = volume.GetProperty("block.device")
        label = volume.GetProperty("volume.label")
        fstype = volume.GetProperty("volume.fstype")
        mounted = volume.GetProperty("volume.is_mounted")
        mount_point = volume.GetProperty("volume.mount_point")
        try:
            size = volume.GetProperty("volume.size")
        except:
            size = 0

        print "New storage device detectec:"
        print "  device_file: %s" % device_file
        print "  label: %s" % label
        print "  fstype: %s" % fstype
        if mounted:
            print "  mount_point: %s" % mount_point
        else:
            print "  not mounted"
        print "  size: %s (%.2fGB)" % (size, float(size) / 1024**3)



::

    if __name__ == '__main__':
        from dbus.mainloop.glib import DBusGMainLoop
        DBusGMainLoop(set_as_default=True)
        loop = gobject.MainLoop()
        DeviceAddedListener()
        loop.run()

