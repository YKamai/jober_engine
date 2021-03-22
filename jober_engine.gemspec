$:.push File.expand_path("lib", __dir__)

# Maintain your gem's version:
require 'jober_engine/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |spec|
  spec.name        = 'jober_engine'
  spec.version     = JoberEngine::VERSION
  spec.authors     = ['Yauhen Kamai']
  spec.email       = ['yauhen_kamai@sap.com']
  spec.summary     = 'Home Task'

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  spec.add_dependency "rails", "~> 6.0.3", ">= 6.0.3.5"

  spec.add_dependency 'bootstrap', '~> 5.0.0.beta2'
  spec.add_dependency 'jquery-rails'

  spec.add_development_dependency "sqlite3"
end
