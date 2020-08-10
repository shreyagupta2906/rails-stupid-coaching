class QuestionsController < ApplicationController
  def ask
  end

  def answer
  @response = params[:question]
   if @response == "I am going to work"
    @coach_response = "Great!"
  elsif @response.end_with?('?')
    @coach_response = "Silly question, get dressed and go to work!"
  else
   @coach_response = "I don't care, get dressed and go to work!"
    end
  end
end


