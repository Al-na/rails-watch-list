class CreateMovies < ActiveRecord::Migration[7.0]
  def change
    create_table :movies do |t|
      t.string :title
      t.text :overview
      t.text :poster_url
      t.float :rating
      t.references :bookmark, null: false, foreign_key: true

      t.timestamps
    end
  end
end
