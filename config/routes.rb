Rails.application.routes.draw do
  # get "/params_game" => "params#params_game"
  get "/params_game", controller: "params", action: "params_game"
end
