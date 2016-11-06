class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.string :short_name
      t.string :hospital
      t.text :body
      t.string :related_posts
      t.integer :offering_salary
      t.string :location
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
