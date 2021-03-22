Rails.application.routes.draw do
  mount JoberEngine::Engine => "/jobs"
end
