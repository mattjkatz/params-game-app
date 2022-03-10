class ParamsController < ApplicationController

  def name_game
    input_name = params["name"].upcase
    if input_name.starts_with?("A")
      render json: "#{input_name}. Hey, your name starts with the first letter of the alphabet!"
    else
      render json: "#{input_name}"
    end
  end

  def number_game
    winning_number = 73
    if params["number"].to_i == winning_number
      render json: "You win!!!"
    elsif params["number"].to_i < winning_number
      render json: "Too low..."
    elsif params["number"].to_i > winning_number
      render json: "Too high!"
    end
  end

end
