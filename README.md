# RubyGem mobile_devices

Convert code names into real names using [@rikas/iosdevices](https://github.com/rikas/iosdevices) and data from [@vinuthomas/android-devices](https://github.com/vinuthomas/android-devices).

```
require 'mobile_devices'

puts MobileDevices.get_name('iPhone6,2')
# "iPhone 5s"

puts MobileDevices.get_name('zerofltespr')
# "Galaxy S6"
```

## Requirements

Ruby >= 3.1, as of version 0.4.0.

Version 0.4.0 tracks [ios-devices](https://rubygems.org/gems/ios-devices) 0.4.0,
which requires Ruby 3.1 or newer. On Ruby 2.7 or 3.0, use mobile_devices 0.3.0.
