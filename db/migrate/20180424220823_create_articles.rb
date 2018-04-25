class CreateArticles < ActiveRecord::Migration[5.1]
  def change
    create_table :articles do |t|
      t.string :name
      t.text :body
      t.text :description
      t.has_many :categories
      t.belongs_to :user
      t.timestamps
    end
  end
end
