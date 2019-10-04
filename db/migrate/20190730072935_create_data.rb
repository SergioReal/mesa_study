class CreateData < ActiveRecord::Migration[5.2]
  def change
    create_table :data do |t|
      t.string :word
      t.string :meaning

      t.timestamps
    end
  end
end
