get '/questions/:question_id/answers/new' do
  @question = Question.find(params[:question_id])
  erb :'answers/new'
end

post '/questions/:question_id/answers' do
  @answer = Answer.new(params[:answer])
  @question = Question.find(params[:question_id])
  if @answer.save
    redirect "/questions/#{@question.id}"
  else
    @errors = @answer.errors.full_messages
    erb :"_errors", layout:false
  end
end
