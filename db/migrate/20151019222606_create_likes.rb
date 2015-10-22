class CreateLikes < ActiveRecord::Migration
  def change
    create_table :likes do |t|
      t.references :User, index: true
      t.references :Post, index: true

      t.timestamps
    end
  end
end
