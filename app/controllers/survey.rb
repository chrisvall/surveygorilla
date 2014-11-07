post '/survey/new' do

  #do something here for creating surveys
  # erb :question
  @survey = Survey.create(title: params[:surveyname], user_id: session[:id])


  redirect "/survey/#{@survey.id}/question/new"

end

