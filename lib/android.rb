
require 'json'

DEFAULT_DATA_FILE = File.join(File.dirname(__FILE__), '../data/android-devices-min.json')

module MobileDevices
  class Android
    def self.default
      @@_default ||= MobileDevices::Android.new(DEFAULT_DATA_FILE)
    end

    def initialize(file)
      @_lookup = {}
      JSON.parse(File.read(file, encoding: Encoding::UTF_8)).each do |row|
        manufacturer = row[0]
        name = row[1]
        codename = row[2]
        if manufacturer.empty? || name.downcase.start_with?(manufacturer.downcase)
          @_lookup[codename] = name
        else
          @_lookup[codename] = manufacturer + " " + name
        end
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
