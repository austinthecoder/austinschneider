Austinschneider::Application.routes.draw do

  root :to => "pages#index"

  match ":action", :to => "pages"

end
