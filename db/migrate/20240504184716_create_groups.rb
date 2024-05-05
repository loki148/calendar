class CreateGroups < ActiveRecord::Migration[7.1]
  def change
    create_table :groups do |t|
      t.text :group
      t.text :color
      t.integer :intensity
      t.timestamps
    end
  end
end
