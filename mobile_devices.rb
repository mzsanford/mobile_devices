
require './lib/android.rb'
require './lib/ios.rb'

module MobileDevices

  extend self

  def get_name(short_name)
    if short_name.start_with?('iP')
      MobileDevices::IOS.search(short_name)
    else
      MobileDevices::Android.search(short_name)
    end
  end
end
