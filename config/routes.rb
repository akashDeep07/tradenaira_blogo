TradenairaBlogo::Application.routes.draw do
  
  Blogo::Routes.mount_to(self, at: '/blog')
  root 'home#index'
  get '/news/:permalink', to: 'home#show'
  get '/tags/:tag', to: 'home#search_tags'
  get '/tags', to: 'home#search_tags'
  get '/search_posts/:query', to: 'home#search_by_query'
  get '/search_by_id/:post_id', to: 'home#search_by_id'

end
