class QuestionsController < ApplicationController
  def index
    quiz = Quiz.find(params[:quiz_id])
    questions = quiz.questions
    render json: questions
  end
end
