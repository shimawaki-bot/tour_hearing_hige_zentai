class CreateHigeZentaiSurveys < ActiveRecord::Migration[8.1]
  def change
    create_table :hige_zentai_surveys do |t|
      t.string :respondent_name
      t.text :q1
      t.text :q1_other
      t.text :q2
      t.text :q2_other
      t.text :q3
      t.text :q3_other
      t.text :q4

      t.timestamps
    end
  end
end
