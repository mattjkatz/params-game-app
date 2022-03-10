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
    user_guess = params["number"]
    numbers_only = true
    if user_guess.match?(/[A-Za-z]/)
      numbers_only = false
    end
    if numbers_only == true
      if user_guess.to_i == winning_number
        render json: "You win!!!"
      elsif user_guess.to_i < winning_number
        render json: "Too low..."
      elsif user_guess.to_i > winning_number
        render json: "Too high!"
      end
    else
      render json: "That's not a number!"
    end
  end

end
