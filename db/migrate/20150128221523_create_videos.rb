class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      t.string :title
      t.string :url
      t.string :tag
      t.integer :views

      t.timestamps
    end
  end
end
