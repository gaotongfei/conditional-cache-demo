class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.string :author
      t.string :title
      t.text :introduction
      t.date :published_at
      t.timestamps
    end
  end
end
