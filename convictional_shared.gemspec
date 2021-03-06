# -*- encoding: utf-8 -*-

=begin
#Shared API

#Convictional is the first B2B trade enablement network. This API allows developers to build on our seller and buyer capabilities. This API is unstable, meaning the endpoints could be added, updated or removed without notice. We intend to make backwards incompatible changes in the future, and will make best efforts to notify you in the event of your usage of impacted endpoints. If you plan to build on this API, please contact us for recommendations via support@convictional.com.

The version of the OpenAPI document: v2021-01-01
Contact: support@convictional.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.3.1

=end

$:.push File.expand_path("../lib", __FILE__)
require "convictional_shared/version"

Gem::Specification.new do |s|
  s.name        = "convictional_shared"
  s.version     = ConvictionalShared::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["OpenAPI-Generator"]
  s.email       = ["support@convictional.com"]
  s.homepage    = "https://openapi-generator.tech"
  s.summary     = "Shared API Ruby Gem"
  s.description = "Convictional is the first B2B trade enablement network. This API allows developers to build on our seller and buyer capabilities. This API is unstable, meaning the endpoints could be added, updated or removed without notice. We intend to make backwards incompatible changes in the future, and will make best efforts to notify you in the event of your usage of impacted endpoints. If you plan to build on this API, please contact us for recommendations via support@convictional.com."
  s.license     = "Unlicense"
  s.required_ruby_version = ">= 2.4"

  s.add_runtime_dependency 'typhoeus', '~> 1.0', '>= 1.0.1'

  s.add_development_dependency 'rspec', '~> 3.6', '>= 3.6.0'

  s.files         = `find *`.split("\n").uniq.sort.select { |f| !f.empty? }
  s.test_files    = `find spec/*`.split("\n")
  s.executables   = []
  s.require_paths = ["lib"]
end
