TradenairaBlogo::Application.routes.draw do
  
  Blogo::Routes.mount_to(self, at: '/blog')
  root 'home#index'
  get '/:permalink', to: 'home#show'

end
