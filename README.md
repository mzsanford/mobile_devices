# RubyGem mobile_devices

Convert code names into real names using [@rikas/iosdevices](https://github.com/rikas/iosdevices) and data from Google's [supported devices list](https://storage.googleapis.com/play_public/supported_devices.csv).

```
require 'mobile_devices'

puts MobileDevices.get_name('iPhone6,2')
# "iPhone 5s"

puts MobileDevices.get_name('zerofltespr')
# "Galaxy S6"
```

## Android data

Android names come from `data/android-devices-min.json`, generated from Google
Play's [supported devices CSV](https://storage.googleapis.com/play_public/supported_devices.csv)
(last refreshed October 2026). Each row is
`[retail branding, marketing name, device codename, model]`; lookups are by
device codename (`Build.PRODUCT`). When multiple devices share a codename, the
last row in the file wins.

## Tests

```
bundle exec ruby test/test_mobile_devices.rb
```

## Requirements

Ruby >= 3.1, as of version 0.4.0.

Version 0.4.0 tracks [ios-devices](https://rubygems.org/gems/ios-devices) 0.4.0,
which requires Ruby 3.1 or newer. On Ruby 2.7 or 3.0, use mobile_devices 0.3.0.
