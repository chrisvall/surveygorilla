require 'faker'


		10.times do
			User.create(username: Faker::Name.name, password: Faker::Internet.password(8))
	    end

		10.times do
			User.all.each do |user|
			user.surveys.create(title: Faker::Lorem.word)
	    end
    end

		10.times do
			Survey.all.each do |survey|
			survey.questions.create(content: Faker::Lorem.sentence(3, true, 4) )
	    end
    end
