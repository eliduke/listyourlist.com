class CreateItems < ActiveRecord::Migration[7.1]
  def change
    create_table :items do |t|
      t.integer "list_id"
      t.integer "position"
      t.text "body"
      t.timestamps
    end
  end
end
