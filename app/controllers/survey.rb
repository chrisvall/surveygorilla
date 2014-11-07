post '/survey/new' do

  #do something here for creating surveys
  # erb :question
  p session[:id]
  @survey = Survey.create(title: params[:surveyname], user_id: session[:id])
  @questions = Question.where(survey_id: @survey.id)

  erb :question

end

