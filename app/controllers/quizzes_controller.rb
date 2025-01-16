class QuizzesController < ApplicationController
  def index
    quizzes = Quiz.all
    render json: quizzes
  end

  def show
    quiz = Quiz.find(params[:id])
    render json: quiz
  end

  def random
    quiz = Quiz.order("RANDOM()").first
    if quiz
      render json: quiz
    else
      render json: { error: "No quizzes available" }, status: :not_found
    end
  end
end
