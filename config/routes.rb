Rails.application.routes.draw do
  resources :forms
  resources :structures do
    
  end
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "structures#index"

  namespace :structures do
      resources :incomes, :prices, :expenses, :indirect_expenses, :adminstrative_costs, :product_sales,
      :product_expenses, :quantities, :total_sale, :products, :controller => 'structures', :except => [:destroy, :edit, :update ]
  end


end
