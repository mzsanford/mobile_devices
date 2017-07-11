
require './lib/android.rb'
require './lib/ios.rb'

module MobileDevices

  extend self

  def get_name(short_name)
    MobileDevices::Android.search(short_name) || MobileDevices::IOS.search(short_name)
  end
end

puts MobileDevices.get_name(ARGV[0])
