class CreateSurveyData < ActiveRecord::Migration
  def self.up
    create_table :survey_data do |t|

	t.string "surveyname"
	t.string "surveytype"
	t.string "surveyowner"
	
	

      t.timestamps
    end
  end

  def self.down
    drop_table :survey_data
  end
end
