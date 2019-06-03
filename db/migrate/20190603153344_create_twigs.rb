class CreateTwigs < ActiveRecord::Migration[5.2]
  def change
    create_table :twigs do |t|
      t.string :name
      t.string :flex
      t.string :shoots
      t.string :pattern

      t.timestamps
    end
  end
end
