class CreateImages < ActiveRecord::Migration[5.0]
  def change
    create_table :images do |t|
      t.text :caption
      t.integer :place_id
      t.timestamps
    end

    add_index :images, :place_id
    
  end
end
