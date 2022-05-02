Rails.application.routes.draw do
  root to: "pages#index" #route to the index using the pages controller while there is no front end
  get 'converter/convert' # request to convert will map to converter controller
end
