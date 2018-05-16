class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.integer :user_id
      t.string :author
      t.string :title
      t.text :body
      t.string :tags
      t.boolean :published
      t.datetime :published_on

      t.timestamps null: false
    end
  end
end
