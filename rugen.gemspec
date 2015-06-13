# encoding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'rugen'
require 'rugen/version'

Gem::Specification.new do |spec|
  extend Rugen

  spec.name     = 'rugen'
  spec.version  = Rugen::VERSION
  spec.authors  = 'D.E. Akers'
  spec.email    = '0x0dea@gmail.com'

  spec.summary  = "#{BLACK STAR} Rugen brings named Unicode literals to Ruby!"
  spec.homepage = 'https://github.com/0x0dea/rugen'

  spec.files    = Dir['lib/**/*']
end
