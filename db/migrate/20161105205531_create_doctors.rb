class CreateDoctors < ActiveRecord::Migration
  def change
    create_table :doctors do |t|
      t.string :title
      t.string :full_name
      t.string :education
      t.string :specialty
      t.integer :target_salary
      t.references :certifications, index: true, foreign_key: true
      t.string :profile_picture
      t.string :resume

      t.timestamps null: false
    end
  end
end
