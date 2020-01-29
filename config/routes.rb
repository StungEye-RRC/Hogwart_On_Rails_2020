Rails.application.routes.draw do
  root to: "houses#index" # Override the welcome to rails screen.

  # Manual member route for house show action:
  get "houses/:id", to: "houses#show", as: "house", id: /\d+/
  # We have now defined the house_path
end
