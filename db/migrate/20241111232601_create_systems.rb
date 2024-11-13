class CreateSystems < ActiveRecord::Migration[7.1]
  def change
    create_table :systems do |t|
      t.string :country_name
      t.string :economic_system
      t.integer :economic_index
      t.string :governmental_system
      t.integer :governmental_index
      t.string :cultural_system
      t.integer :cultural_index
      t.string :image_url
      t.string :wiki_page

      t.timestamps
    end
  end
end
