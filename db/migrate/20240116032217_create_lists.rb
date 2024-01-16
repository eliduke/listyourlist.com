class CreateLists < ActiveRecord::Migration[7.1]
  def change
    create_table :lists do |t|
      t.integer "user_id"
      t.string "title"
      t.text "description"
      t.boolean "ordered"
      t.boolean "public", default: false, null: false
      t.string "permalink"
      t.boolean "commenting", default: true, null: false
      t.timestamps
    end
  end
end
