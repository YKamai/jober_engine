require 'bootstrap'
require 'jquery-rails'

module JoberEngine
  class Engine < ::Rails::Engine
    isolate_namespace JoberEngine

    initializer 'jober_engine.assets.precompile' do |app|
      app.config.assets.precompile += [
        'jober_engine/application.css', 'jober_engine/application.js'
      ]
    end
  end
end
