get '/questions' do
  @questions = Question.all
  erb :'questions/index'
end

get '/questions/:id' do
  @question = Question.find(params[:id])
  p "*" * 100
  @answers = @question.answers
  p @answers
  p "*" * 100

  erb :'questions/show'
end
