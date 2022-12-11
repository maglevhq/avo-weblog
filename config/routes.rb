Rails.application.routes.draw do
  resources :posts

  mount Avo::Engine, at: Avo.configuration.root_path
  
  mount Maglev::Engine => '/maglev'
  
  get '(*path)', to: 'maglev/page_preview#index', defaults: { path: 'index' }, constraints: Maglev::PreviewConstraint.new  
end
