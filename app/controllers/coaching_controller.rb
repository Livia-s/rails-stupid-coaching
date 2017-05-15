class CoachingController < ApplicationController
  def answer
    # Get the right input. Store it in a variable
    @questions = params[:query]
    # Calculate the right answer from the input (Call the coach_answer method)
    # Store the result in a variable that you pass on to the view (@variable)
    @answers = coach_answer(@questions)
  end

  def ask
  end



  private

  def coach_answer(questions)
    if questions.downcase == "i am going to work right now!"
      ''
    elsif questions.end_with?("?")
      "Silly question, get dressed and go to work!"
    else
      "I don't care, get dressed and go to work!"
    end
  end

end
