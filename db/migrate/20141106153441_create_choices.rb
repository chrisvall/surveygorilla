class CreateChoices < ActiveRecord::Migration
  def change
  	create_table :choices do |t|
  		t.string :content
  		t.references :question
  	end 
  end
end
