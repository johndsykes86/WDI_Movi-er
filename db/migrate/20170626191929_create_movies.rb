class CreateMovies < ActiveRecord::Migration[5.1]
  def change
    create_table :movies do |t|
      t.string :title
      t.text :synopsis
      t.string :img_url
      t.belongs_to :user, foreign_key: true

      t.timestamps
    end
  end
end
