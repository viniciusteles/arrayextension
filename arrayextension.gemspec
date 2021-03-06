# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run the gemspec command
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{arrayextension}
  s.version = "0.2.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Vinicius Teles"]
  s.date = %q{2010-08-21}
  s.description = %q{This gem extends the Ruby class Array with a few useful methods. Just a bit of sugar.}
  s.email = %q{vinicius@improveit.com.br}
  s.extra_rdoc_files = [
    "LICENSE",
     "README.rdoc"
  ]
  s.files = [
    ".bundle/config",
     ".document",
     ".gitignore",
     "CHANGELOG",
     "Gemfile",
     "LICENSE",
     "README.rdoc",
     "Rakefile",
     "VERSION",
     "lib/arrayextension.rb",
     "spec/arrayextension_spec.rb",
     "spec/spec.opts",
     "spec/spec_helper.rb"
  ]
  s.homepage = %q{http://github.com/viniciusteles/arrayextension}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{This gem extends the Ruby class Array with a few useful methods.}
  s.test_files = [
    "spec/arrayextension_spec.rb",
     "spec/spec_helper.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rspec>, [">= 1.2.8"])
    else
      s.add_dependency(%q<rspec>, [">= 1.2.8"])
    end
  else
    s.add_dependency(%q<rspec>, [">= 1.2.8"])
  end
end

