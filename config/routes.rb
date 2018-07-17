Rails.application.routes.draw do
  resources :grades do
    collection do
      get '/grades', to: 'grades#index'
      get '/top', to: 'grades#top'
      get '/bio', to: 'grades#bio'
      get '/math', to: 'grades#math'
      get '/adapy', to: 'grades#adapy'

      get '/failed', to: 'grades#failed'
      get '/boysfailed', to: 'grades#boysfailed'
      get '/girlsfailed', to: 'grades#girlsfailed'

      get '/girls', to: 'grades#girls'
      get '/boys', to: 'grades#boys'
    end
  end
end
