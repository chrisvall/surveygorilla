module Seed
	def self.populate 
		10.times do 
			User.create(name) Faker::Name.name, password: Faker::Internet.password(8))
	    end 
    end 


#create surveys
    def self.populate 
		10.times do 
			User.all.each do |user|
			user.surveys.create(title: Faker::Lorem.word)
	    end 
    end 


#create questions 
    def self.populate 
		10.times do 
			Survey.all.each do |survey|
			survey.questions.create(content: Faker::Lorem.sentence(3, true, 4) )
	    end 
    end 

end 