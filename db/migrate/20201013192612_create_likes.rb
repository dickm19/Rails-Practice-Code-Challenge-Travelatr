class CreateLikes < ActiveRecord::Migration[5.1]
  def change
    create_table :likes do |t|
      t.belongs_to :post, foreign_key: true
      t.belongs_to :blogger, foreign_key: true

      t.timestamps
    end
  end
end
