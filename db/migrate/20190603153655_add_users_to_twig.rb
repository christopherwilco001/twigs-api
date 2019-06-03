class AddUsersToTwig < ActiveRecord::Migration[5.2]
  def change
    add_reference :twigs, :users, foreign_key: true
  end
end
