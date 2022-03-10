Rails.application.routes.draw do
  # get "/params_game" => "params#params_game"
  get "/name_game/:name" => "params#name_game"
  get "/number_game/:number" => "params#number_game"
end
