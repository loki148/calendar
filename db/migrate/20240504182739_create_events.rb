class CreateEvents < ActiveRecord::Migration[7.1]
  def change
    create_table :events do |t|
      t.time :time_from
      t.time :time_to
      t.date :date
      t.string :name
      t.text :body
      t.string :group

      t.timestamps
    end
  end
end
