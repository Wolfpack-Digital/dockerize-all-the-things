class CreateWolves < ActiveRecord::Migration[5.2]
  def change
    create_table :wolves do |t|
      t.string :name
      t.integer :age
      t.boolean :alpha
      t.string :description
      t.string :avatar
      t.jsonb :tags, default: []

      t.timestamps
    end
  end
end
