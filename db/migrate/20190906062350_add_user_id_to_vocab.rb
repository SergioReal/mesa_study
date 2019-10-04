class AddUserIdToVocab < ActiveRecord::Migration[5.2]
  def change
    add_column :data, :user_id, :string
  end
end
