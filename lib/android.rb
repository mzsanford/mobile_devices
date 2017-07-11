
require 'json'

DEFAULT_DATA_FILE = File.join(File.dirname(__FILE__), '../data/android-devices-min.json')

module MobileDevices
  class Android
    def self.default
      @@_default ||= MobileDevices::Android.new(DEFAULT_DATA_FILE)
    end

    def initialize(file)
      @_lookup = {}
      JSON.parse(File.read(file)).each do |row|
        name = row[1]
        codename = row[2]
        @_lookup[codename] = name
      end
    end

    def name(product)
      @_lookup[product]
    end

    def self.search(product)
      self.default.name(product)
    end
  end
end
