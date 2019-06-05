class AddUserToTwig < ActiveRecord::Migration[5.2]
  def change
    add_reference :twigs, :user, foreign_key: true
  end
end
