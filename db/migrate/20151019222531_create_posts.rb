class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.text :post
      t.references :User, index: true

      t.timestamps
    end
  end
end
