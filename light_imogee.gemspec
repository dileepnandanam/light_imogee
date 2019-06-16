Gem::Specification.new do |s|
  s.name = "light_imogee"
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Dileep Nandanam"]
  s.date = "2014-11-20"
  s.description = "imogee gem"
  s.email = "dileepsnandanam@gmail.com"
  s.extra_rdoc_files = [
    "LICENSE.txt"
  ]
  s.files = [
    "Gemfile",
    "Gemfile.lock",
    "LICENSE.txt",
    "VERSION",
    "lib/light_imogee.rb",
    "lib/google.rb",
    "lib/facebook.rb",
    "lib/twitter.rb",
    "lib/browser.rb",
    "light_imogee.gemspec",
  ]
  s.homepage = "http://github.com/dileepnandanam/light_imogee"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.2.2"
  s.summary = "rails gem for collection of imogees in google, facebook, twitter, and default browser"
end

