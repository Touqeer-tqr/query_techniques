class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.date :DOB
      t.text :picture

      t.timestamps null: false
    end
  end
end
