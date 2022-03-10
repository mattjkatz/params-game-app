class ParamsController < ApplicationController

  def params_game
    input_name = params["name"].upcase
    if input_name.split("")[0] == "A"
      render json: "#{input_name}. Hey, your name starts with the first letter of the alphabet!"
    else
      render json: "#{input_name}"
    end
  end

end
