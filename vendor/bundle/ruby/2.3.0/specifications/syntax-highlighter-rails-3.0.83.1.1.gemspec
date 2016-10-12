# -*- encoding: utf-8 -*-
# stub: syntax-highlighter-rails 3.0.83.1.1 ruby lib

Gem::Specification.new do |s|
  s.name = "syntax-highlighter-rails"
  s.version = "3.0.83.1.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Olivier Philbert"]
  s.date = "2013-09-04"
  s.description = "A rails gem to display your code properly on webpages using syntaxHighlighter"
  s.email = ["olivier@philbert.fr"]
  s.homepage = ""
  s.licenses = ["MIT"]
  s.rubygems_version = "2.5.1"
  s.summary = "A rails gem to display your code properly on webpages using syntaxHighlighter"

  s.installed_by_version = "2.5.1" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<railties>, [">= 0"])
    else
      s.add_dependency(%q<railties>, [">= 0"])
    end
  else
    s.add_dependency(%q<railties>, [">= 0"])
  end
end
