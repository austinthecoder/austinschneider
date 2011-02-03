Austinschneider::Application.routes.draw do

  Page.all.each do |p|
    match p.path, :to => "pages##{p.action}", :as => p.name
  end

end
