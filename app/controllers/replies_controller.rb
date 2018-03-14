class RepliesController < ApplicationController

  def new
    @quiz = Quiz.find(params[:quiz_id])
    @reply = @quiz.replies.build
    @quiz.questions.each {|question| @reply.answers.build(question: question)}
  end

  def create
    @quiz = Quiz.find(params[:quiz_id])
    @reply = @quiz.replies.build reply_params
    if @reply.save
      redirect_to @quiz, notice: "Thank you for taking the quiz"
    end
  end
  
  def reply_params
    params.require(:reply).permit({ answers_attributes: [ :value, :question_id, :possible_answer_id ] })
  end

end
