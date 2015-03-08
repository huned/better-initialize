require File.expand_path('../lib/better_initialize/version', __FILE__)

Gem::Specification.new do |s|
  s.name          = 'Better Initialize'
  s.version       = BetterInitialize::VERSION
  s.summary       = 'A better ruby initialize.'
  s.description   = File.read('./README.md')
  s.authors       = ['Huned Botee']
  s.email         = 'huned@734m.com'
  s.homepage      = 'https://github.com/huned/better-initialize'
  s.license       = 'MIT'

  s.files         = `git ls-files`.split($\)
  s.executables   = s.files.grep(%r{^bin/}).map{|f| File.basename(f) }
  s.test_files    = s.files.grep(%r{^(test|spec|features)/})
  s.require_paths = ['lib']

  s.add_development_dependency 'test-unit'
  s.add_development_dependency 'byebug'
end
