Rails.application.routes.draw do

  get 'static_pages/home'

  get 'static_pages/help'

  get 'satic_pages/home'

  get 'satic_pages/help'

  root 'application#hello'

end
