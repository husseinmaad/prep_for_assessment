class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.string :descreption
      t.integer :category_id

      t.timestamps null: false
    end 
  end
end
