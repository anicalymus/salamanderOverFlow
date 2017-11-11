get '/questions/:question_id/question/new' do
  @question = Question.find(params[:question_id])
  erb :'comments/new'
end

post '/questions/:question_id/comments' do
  @question = Question.find(params[:question_id])
  @comment = @question.comments.new(body: params[:body], user_id: current_user)
  if @comment.save
    redirect "/questions/#{@question.id}"
  else
    @errors = @comment.errors.full_messages
    erb :"_errors", layout:false
  end
end
