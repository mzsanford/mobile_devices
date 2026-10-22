require 'minitest/autorun'
require_relative '../mobile_devices'

class TestMobileDevices < Minitest::Test
  def test_ios_lookup
    assert_equal 'iPhone 5s', MobileDevices.get_name('iPhone6,2')
    assert_equal 'iPhone 16 Pro Max', MobileDevices.get_name('iPhone17,2')
    assert_equal 'iPad mini 6', MobileDevices.get_name('iPad14,1')
  end

  def test_android_lookup
    assert_equal 'Samsung Galaxy S6', MobileDevices.get_name('zerofltespr')
    assert_equal 'Google Pixel 9 Pro', MobileDevices.get_name('caiman')
    assert_equal 'Samsung Galaxy S24 Ultra', MobileDevices.get_name('e3q')
  end

  def test_unknown_android_returns_nil
    assert_nil MobileDevices.get_name('notarealdevice')
  end

  def test_android_names_are_utf8
    name = MobileDevices.get_name('U380AA')
    assert_equal 'AT&T Calypso® 4', name
    assert_equal Encoding::UTF_8, name.encoding
  end

  # The data file contains non-ASCII bytes; loading must not depend on the
  # process locale (LANG may be unset on servers and in containers).
  def test_loads_under_ascii_default_external_encoding
    original = Encoding.default_external
    verbose, $VERBOSE = $VERBOSE, nil
    Encoding.default_external = Encoding::US_ASCII
    android = MobileDevices::Android.new(DEFAULT_DATA_FILE)
    assert_equal 'Google Pixel 8 Pro', android.name('husky')
  ensure
    Encoding.default_external = original
    $VERBOSE = verbose
  end
end
