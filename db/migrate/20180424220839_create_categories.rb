class CreateCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :categories do |t|
      t.string :name
      t.has_many :articles, index: true
      t.timestamps
    end
  end
end
