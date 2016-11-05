class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.references :owner, index: true, foreign_key: true
      t.integer :offering_salary
      t.string :location
      t.text :body, required: true
      t.string :title, required: true
      t.text :related_posts
      t.string :demand
      t.datetime :created_at

      t.timestamps null: false
    end
  end
end
