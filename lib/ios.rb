
require 'ios/devices'

module MobileDevices
  class IOS
    def self.search(device_type)
      device = Ios::Devices.search(device_type)
      device.name unless device.nil?
    end
  end
end
