class CreateYourviews < ActiveRecord::Migration
  def change
    create_table :yourviews do |t|
      t.integer :article_id
      t.text :body

      t.timestamps
    end
  end
end
