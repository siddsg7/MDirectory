class CreateRecruiters < ActiveRecord::Migration
  def change
    create_table :recruiters do |t|
      t.string :full_name
      t.string :organization
      t.integer :offering_salary
      t.integer :open_positions
      t.string :searching_for
      t.string :phone_number
      t.string :demand
      t.string :email

      t.timestamps null: false
    end
  end
end
