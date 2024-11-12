class CreateSystems < ActiveRecord::Migration[7.1]
  def change
    create_table :systems do |t|
      t.string :Country_name
      t.string :Economic_System
      t.integer :Economic_Index
      t.string :Governmental_System
      t.integer :Governmental_Index
      t.string :Cultural_System
      t.integer :Cultural_Index
      t.string :Image_Url
      t.string :Wiki_Page

      t.timestamps
    end
  end
end
