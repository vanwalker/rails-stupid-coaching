class AnswersController < ApplicationController
  def answer
    @answers = []
    if params[:question] == "I am going to work"
      # @questions = @questions.select { |question| question.start_with?(params[:question]) }
      @answers << "Great!"
      return @answers
    elsif params[:question][-1] == '?'
      @answers << "Silly question, get dressed and go to work!"
      return @answers
    else
      @answers <<  "I don't care, get dressed and go to work!"
      return @answers
    end
  end
end
