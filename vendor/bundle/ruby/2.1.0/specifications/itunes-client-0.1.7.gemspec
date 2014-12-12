# -*- encoding: utf-8 -*-
# stub: itunes-client 0.1.7 ruby lib

Gem::Specification.new do |s|
  s.name = "itunes-client"
  s.version = "0.1.7"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["ryo katsuma"]
  s.date = "2014-04-03"
  s.description = "iTunes client with high level API"
  s.email = ["katsuma@gmail.com"]
  s.homepage = "https://github.com/katsuma/itunes-client"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.2.2"
  s.summary = "itunes-client provides a high level API like ActiveRecord style to control your iTunes."

  s.installed_by_version = "2.2.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rake>, ["~> 10.0.3"])
      s.add_development_dependency(%q<rspec>, ["~> 2.13.0"])
      s.add_development_dependency(%q<rb-fsevent>, ["~> 0.9.3"])
      s.add_development_dependency(%q<guard>, ["~> 1.8.1"])
      s.add_development_dependency(%q<guard-rspec>, ["~> 3.0.2"])
      s.add_development_dependency(%q<growl>, ["~> 1.0.3"])
      s.add_development_dependency(%q<fakefs>, ["~> 0.4.2"])
      s.add_development_dependency(%q<simplecov>, ["~> 0.7.1"])
      s.add_development_dependency(%q<coveralls>, ["~> 0.6.6"])
      s.add_development_dependency(%q<pry>, ["~> 0.9.12.2"])
    else
      s.add_dependency(%q<rake>, ["~> 10.0.3"])
      s.add_dependency(%q<rspec>, ["~> 2.13.0"])
      s.add_dependency(%q<rb-fsevent>, ["~> 0.9.3"])
      s.add_dependency(%q<guard>, ["~> 1.8.1"])
      s.add_dependency(%q<guard-rspec>, ["~> 3.0.2"])
      s.add_dependency(%q<growl>, ["~> 1.0.3"])
      s.add_dependency(%q<fakefs>, ["~> 0.4.2"])
      s.add_dependency(%q<simplecov>, ["~> 0.7.1"])
      s.add_dependency(%q<coveralls>, ["~> 0.6.6"])
      s.add_dependency(%q<pry>, ["~> 0.9.12.2"])
    end
  else
    s.add_dependency(%q<rake>, ["~> 10.0.3"])
    s.add_dependency(%q<rspec>, ["~> 2.13.0"])
    s.add_dependency(%q<rb-fsevent>, ["~> 0.9.3"])
    s.add_dependency(%q<guard>, ["~> 1.8.1"])
    s.add_dependency(%q<guard-rspec>, ["~> 3.0.2"])
    s.add_dependency(%q<growl>, ["~> 1.0.3"])
    s.add_dependency(%q<fakefs>, ["~> 0.4.2"])
    s.add_dependency(%q<simplecov>, ["~> 0.7.1"])
    s.add_dependency(%q<coveralls>, ["~> 0.6.6"])
    s.add_dependency(%q<pry>, ["~> 0.9.12.2"])
  end
end
