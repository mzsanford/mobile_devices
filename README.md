# RubyGem mobile_devices

Convert code names into real names using [@rikas/iosdevices](https://github.com/rikas/iosdevices) and data from [@vinuthomas/android-devices](https://github.com/vinuthomas/android-devices).

```
require 'mobile_devices'

puts MobileDevices.get_name('iPhone6,2')
# "iPhone 5s"
 
puts MobileDevices.get_name('zerofltespr')
# "Galaxy S6"
```
