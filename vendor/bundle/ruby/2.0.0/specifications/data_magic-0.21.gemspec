# -*- encoding: utf-8 -*-
# stub: data_magic 0.21 ruby lib

Gem::Specification.new do |s|
  s.name = "data_magic"
  s.version = "0.21"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Jeff Morgan"]
  s.date = "2015-04-12"
  s.description = "Provides datasets to application stored in YAML files"
  s.email = ["jeff.morgan@leandog.com"]
  s.homepage = "http://github.com/cheezy/data_magic"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.4.6"
  s.summary = "Provides datasets to application via YAML files"

  s.installed_by_version = "2.4.6" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<faker>, [">= 1.1.2"])
      s.add_runtime_dependency(%q<yml_reader>, [">= 0.4"])
      s.add_development_dependency(%q<rspec>, [">= 2.12.0"])
      s.add_development_dependency(%q<cucumber>, [">= 1.2.0"])
    else
      s.add_dependency(%q<faker>, [">= 1.1.2"])
      s.add_dependency(%q<yml_reader>, [">= 0.4"])
      s.add_dependency(%q<rspec>, [">= 2.12.0"])
      s.add_dependency(%q<cucumber>, [">= 1.2.0"])
    end
  else
    s.add_dependency(%q<faker>, [">= 1.1.2"])
    s.add_dependency(%q<yml_reader>, [">= 0.4"])
    s.add_dependency(%q<rspec>, [">= 2.12.0"])
    s.add_dependency(%q<cucumber>, [">= 1.2.0"])
  end
end
