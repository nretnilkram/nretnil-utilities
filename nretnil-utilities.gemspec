#!/bin/env ruby
# frozen_string_literal: true

$LOAD_PATH.push File.expand_path('lib', __dir__)

require 'nretnil/utilities/version'

Gem::Specification.new do |s|
  s.name        = 'nretnil-utilities'
  s.version     = Nretnil::Utilities::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ['Nretnil Kram']
  s.email       = ['signkram@gmail.com']
  s.homepage    = 'http://github.com/nretnilkram/nretnil-utilites'
  s.date        = Time.now.strftime('%Y-%m-%d')
  s.summary     = 'Utilites Gem'
  s.description = 'This gem includes helper extentions to Array, Hash, and String classes.'
  s.license     = 'MIT'
  s.extra_rdoc_files = [
    'LICENSE',
    'README.md'
  ]

  s.post_install_message = "Know your target and what's behind it."

  s.required_rubygems_version = '>= 0.0.0'

  s.files         = Dir.glob('{bin,lib}/**/*') + %w[LICENSE README.md CHANGELOG.md]
  s.rdoc_options  = ['--charset=UTF-8']
  s.require_paths = ['lib']
end
