# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run the gemspec command
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{radiant-autoresize_textarea-extension}
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["SquareTalent"]
  s.date = %q{2010-09-21}
  s.description = %q{Automatically resizes textarea controls to fit their contents in the radiant admin interface.}
  s.email = %q{mario@squaretalent.com}
  s.extra_rdoc_files = [
    "LICENSE",
     "README.md"
  ]
  s.files = [
    ".gitignore",
     "CHANGELOG",
     "LICENSE",
     "README.md",
     "Rakefile",
     "VERSION",
     "app/models/auto_resize_interface.rb",
     "autoresize_textarea_extension.rb",
     "config/locales/en.yml",
     "config/routes.rb",
     "cucumber.yml",
     "features/support/env.rb",
     "features/support/paths.rb",
     "lib/tasks/autoresize_textarea_extension_tasks.rake",
     "public/javascripts/admin/auto_resize.js",
     "spec/spec.opts",
     "spec/spec_helper.rb"
  ]
  s.homepage = %q{http://github.com/squaretalent/radiant-autoresize_textarea-extension}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{Automatically resizes textarea controls to fit their contents in the radiant admin interface.}
  s.test_files = [
    "spec/spec_helper.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
