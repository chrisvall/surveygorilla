class CreateQuestions < ActiveRecord::Migration
  def change
  	create_table :questions do |t|
  		t.string :question
      t.string :choiceOne
      t.string :choiceTwo
      t.string :choiceThree
      t.string :choiceFour
  		t.references :survey
  	end
  end
end
