class CreateSurveys < ActiveRecord::Migration
  def change
  	create_table :surveys do |t|
  		t.string :title
  		t.references :user
  	end 
  end
end
