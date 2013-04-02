class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.references :from
      t.references :to
      t.string :title
      t.text :body

      t.timestamps
    end
    add_index :messages, :from_id
    add_index :messages, :to_id
  end
end
