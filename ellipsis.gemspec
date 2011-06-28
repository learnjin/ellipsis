# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "ellipsis/version"

Gem::Specification.new do |s|
  s.name        = "ellipsis"
  s.version     = Ellipsis::VERSION
  s.authors     = ["Kai Rubarth"]
  s.email       = ["krubar@gmail.com"]
  s.homepage    = ""
  s.summary     = %q{Converts arrays into abbreviated String representations.}
  s.description = %q{The gem provides various methods for turning a list of elements into an abbreviated string representation.}

  s.rubyforge_project = "ellipsis"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

end


