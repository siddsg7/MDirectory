class CreateDoctors < ActiveRecord::Migration
  def change
    create_table :doctors do |t|
      t.string :full_name, required: true
      t.references :certification, index: true, foreign_key: true
      t.references :hospital, index: true, foreign_key: true
      t.string :resume
      t.integer :target_salary, required: true
      t.string :specialty
      t.string :pref_title
      t.string :education
      t.references :post, index: true, foreign_key: true
      t.integer :phone_number, required: true
      t.string :email
      t.timestamps null: false
    end
  end
end
