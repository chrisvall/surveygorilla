require 'json'

get '/survey/:survey_id/question/new' do
  @survey = Survey.find(params[:survey_id])
  @questions = Question.where(survey_id: @survey.id)

  erb :question
end

post '/survey/:survey_id/question/new' do

  question = params[:question]
  survey_id = params[:survey_id]

  choiceOne = params[:choiceOne]
  choiceTwo = params[:choiceTwo]
  choiceThree = params[:choiceThree]
  choiceFour = params[:choiceFour]

  @survey = Survey.find(survey_id)

  question = Question.create(question: question, choiceOne: choiceOne, choiceTwo: choiceTwo, choiceThree: choiceThree, choiceFour: choiceFour, survey_id: survey_id)

  @questions = Question.where(survey_id: survey_id)

  content_type :json
  data = {survey: @survey.id, question: question}
  data.to_json



end
