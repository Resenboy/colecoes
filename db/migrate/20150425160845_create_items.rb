class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string  :name
      t.integer :amount

      t.references :collection, null: false, index: true

      t.timestamps null: false
    end

    add_foreign_key :items, :collections, on_delete: :cascade
  end
end
