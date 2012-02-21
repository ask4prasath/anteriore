# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "anteriore/version"

Gem::Specification.new do |s|
  s.name        = "anteriore"
  s.version     = Anteriore::VERSION
  s.authors     = ["Prasath Venkatraman"]
  s.email       = ["ask4prasath@gmail.com"]
  s.homepage    = ""
  s.summary     = %q{Manage ur cloud made simple}
  s.description = %q{Gem description}

  s.rubyforge_project = "anteriore"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib", "bin"]

  # specify any dependencies here; for example:
  s.add_development_dependency "rspec"
  s.add_runtime_dependency "fog"
end
