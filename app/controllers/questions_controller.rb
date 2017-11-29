require 'pry'
class QuestionsController < ApplicationController

  def index
    @questions = Question.all
    render :index
  end

  def new
    @question = Question.new
    render :new
  end

  def create
    @question = current_user.questions.new(question_params)
    if @question.save
      flash[:notice] = " Question posted "
      redirect_to '/questions'
    else
      flash[:alert] = "There was a problem posting question"
      redirect_to new
    end
  end



  private

  def question_params
    params.require(:question).permit(:query)
  end
end
