# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "retrieva/cop/version"

Gem::Specification.new do |spec|
  spec.name          = "retrieva-cop"
  spec.version       = Retrieva::Cop::VERSION
  spec.authors       = ["Kei Shiratsuchi"]
  spec.email         = ["kei.shiratsuchi@retrieva.jp"]

  spec.summary       = %q{RetrievaCop is a RuboCop configuration gem.}
  spec.description   = %q{RetrievaCop is a RuboCop configuration gem.}
  spec.homepage      = "https://github.com/retrieva/retrieva-cop"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "rubocop", "~> 0.50.0"
  spec.add_dependency "rubocop-rspec", ">= 1.18.0"
  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake"
end
