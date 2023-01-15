class CreateDaubs < ActiveRecord::Migration[7.0]
  def change
    create_table :daubs do |t|
      t.string :category
      t.string :genre
      t.string :title
      t.text :text_url
      t.string :author
      t.date :publication_date
      t.string :published_by
      t.text :image_url

      t.timestamps
    end
  end
end
