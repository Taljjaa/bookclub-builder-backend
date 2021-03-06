class CreatePolls < ActiveRecord::Migration[6.0]
  def change
    create_table :polls do |t|
      t.string :name
      t.integer :bookclub_id
      t.boolean :active, :default => true
      t.timestamps
    end
  end
end
