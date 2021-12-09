TradenairaBlogo::Application.routes.draw do
  
  Blogo::Routes.mount_to(self, at: '/blog')

  scope(path: "blog", module: 'blogo', as: 'blogo') do
    namespace :admin do
      resources :banners, except: %w(show) do
        collection do
          get 'list/:category', to: "banners#index", as: 'list'
        end
      end
      resources :user, only: [:edit,:update] do
      end
    end
    resources :user, only: [:show] do

    end
  end

  root 'home#index'
  get '/blogs/:permalink', to: 'home#show'
  get '/tags/:tag', to: 'home#search_tags'
  get '/tags', to: 'home#search_tags'
  get '/search_posts/:query', to: 'home#search_by_query'
  get '/search_by_id/:post_id', to: 'home#search_by_id'
  post '/update_sidebar', to: 'home#update_sidebar'

  get '/load_more_post', to: 'home#load_more_post'

  get '/blog/admin/links', to: 'blogo/admin/posts#sidebar_links'#, as: :all_sidebar_links
  get '/blog/admin/links/new', to: 'blogo/admin/posts#new_sidebar_link'
  post '/blog/admin/links', to: 'blogo/admin/posts#create_new_link_record'#, as: :create_sidebar_link
  delete '/blog/admin/delete/:id', to: 'blogo/admin/posts#delete_sidebar_link'
  get '/blog/admin/edit/:id', to: 'blogo/admin/posts#edit_sidebar_link'
  post '/blog/admin/update/:id', to: 'blogo/admin/posts#update_sidebar_link'




  # custom routes

  get '/signin', to: 'custom_routes#signin' #2
  get '/signup', to: 'custom_routes#signup' #3
  get '/markets/usdngn', to: 'custom_routes#markets_usdngn' #4
  get '/money/quick_exchange', to: 'custom_routes#money_quick_exchange' #5
  get '/pages/faq', to: 'custom_routes#pages_faq' #6
  get '/money/escrow', to: 'custom_routes#money_escrow' #7
  get '/professional/services', to: 'custom_routes#professional_services' #8
  get '/pages/about', to: 'custom_routes#pages_about' #9
  get '/news', to: 'custom_routes#news' #10
  get '/pages/send-money-to-nigeria', to: 'custom_routes#pages_send_money_to_nigeria' #11
  get '/markets/eurngn', to: 'custom_routes#markets_eurngn' #12
  get '/pages/fee', to: 'custom_routes#pages_fee' #13
  get '/professional/services/provide-iso-certification-consultancy', to: 'custom_routes#professional_services_provide_iso_certification_consultancy' #14
  get '/markets/gbpngn', to: 'custom_routes#markets_gbpngn' #15
  get '/professional/categories/legal-administrative-services', to: 'custom_routes#professional_categories_legal_administrative_services' #16
  get '/lists/top-10-richest-people-in-ghana-2019', to: 'custom_routes#lists_top_10_richest_people_in_ghana_2019' #17
  get '/professional/categories/20', to: 'custom_routes#professional_categories_20' #18
  get '/lists/top-10-most-influential-people-in-nigeria-2019', to: 'custom_routes#lists_top_10_most_influential_people_in_nigeria_2019' #19
  get '/professional/categories/licenses-permits', to: 'custom_routes#professional_categories_licenses_permits' #20
  get '/markets/ghsngn', to: 'custom_routes#markets_ghsngn' #22
  get '/professional/services/write-a-book-that-sells-and-also-amplifies-your-personal-and-corporate-brand', to: 'custom_routes#professional_services_write_a_book_that_sells_and_also_amplifies_your_personal_and_corporate_brand' #23
  get '/markets/btcngn', to: 'custom_routes#markets_btcngn' #24
  get '/professional/services/manage-your-project', to: 'custom_routes#professional_services_manage_your_project' #25
  get '/professional/services/post-your-business-on-the-top-nigerian-business-directory', to: 'custom_routes#professional_services_post_your_business_on_the_top_nigerian_business_directory' #26
  get '/pages/request-money', to: 'custom_routes#pages_request_money' #27
  get '/lists/top-10-richest-men-in-nigeria-2019', to: 'custom_routes#lists_top_10_richest_men_in_nigeria_2019' #28
  get '/markets/gbpzar', to: 'custom_routes#markets_gbpzar' #29
  get '/lists/large-american-companies-that-use-prison-labour', to: 'custom_routes#lists_large_american_companies_that_use_prison_labour' #30
  get '/markets/zarghs', to: 'custom_routes#markets_zarghs' #31
  get '/markets/usdzar', to: 'custom_routes#markets_usdzar' #32
  get '/professional/categories/clearing-agents', to: 'custom_routes#professional_categories_clearing_agents' #33
  get '/markets/btczar', to: 'custom_routes#markets_btczar' #34
  get '/markets/usdkes', to: 'custom_routes#markets_usdkes' #35
  get '/markets/btcghs', to: 'custom_routes#markets_btcghs' #36
  get '/markets/zarngn', to: 'custom_routes#markets_zarngn' #37
  get '/markets/usdghs', to: 'custom_routes#markets_usdghs' #38
  get '/markets/gbpghs', to: 'custom_routes#markets_gbpghs' #39
  get '/markets/gbpkes', to: 'custom_routes#markets_gbpkes' #40
  get '/markets/zarkes', to: 'custom_routes#markets_zarkes' #41
  get '/markets/eurkes', to: 'custom_routes#markets_eurkes' #42


end
