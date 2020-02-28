Gem::Specification.new do |s|
  s.name          = 'mobile_devices'
  s.version       = '0.1.2'
  s.licenses      = ['MIT']
  s.summary       = "Lookup iOS devices from device type, Android from Build.PRODUCT"
  s.description   = "Turn names like iPhone6,2 and zerofltespr into iPhone 5S and Galaxy S6"
  s.authors       = ["Matt Sanford"]
  s.email         = 'matt@mzsanford.com'
  s.homepage      = 'https://github.com/mzsanford/mobile_devices'
  s.files         = `git ls-files -z`.split("\x0")
  s.require_paths = ['.']

  s.add_runtime_dependency 'ios-devices', '~> 0.2.10'
end
