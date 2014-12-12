# -*- encoding: utf-8 -*-
# stub: burn 0.2.2 ruby lib

Gem::Specification.new do |s|
  s.name = "burn"
  s.version = "0.2.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Kei Sawada(@remore)"]
  s.date = "2014-09-19"
  s.description = "Burn is a free and open source framework that allows you to create 8-bit flavored application using Ruby DSL."
  s.email = ["k@swd.cc"]
  s.executables = ["burn"]
  s.files = ["bin/burn"]
  s.homepage = "http://k.swd.cc/burn/"
  s.licenses = ["GPLv3"]
  s.required_ruby_version = Gem::Requirement.new(">= 1.9.1")
  s.rubygems_version = "2.2.2"
  s.summary = "Burn is a free and open source framework that allows you to create 8-bit flavored application using Ruby DSL."

  s.installed_by_version = "2.2.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<thor>, [">= 0"])
      s.add_runtime_dependency(%q<archive-tar-minitar>, [">= 0"])
      s.add_runtime_dependency(%q<eventmachine>, [">= 0"])
      s.add_development_dependency(%q<rake>, [">= 0"])
    else
      s.add_dependency(%q<thor>, [">= 0"])
      s.add_dependency(%q<archive-tar-minitar>, [">= 0"])
      s.add_dependency(%q<eventmachine>, [">= 0"])
      s.add_dependency(%q<rake>, [">= 0"])
    end
  else
    s.add_dependency(%q<thor>, [">= 0"])
    s.add_dependency(%q<archive-tar-minitar>, [">= 0"])
    s.add_dependency(%q<eventmachine>, [">= 0"])
    s.add_dependency(%q<rake>, [">= 0"])
  end
end
