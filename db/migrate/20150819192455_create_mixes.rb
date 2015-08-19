class CreateMixes < ActiveRecord::Migration
  def change
    create_table :mixes do |t|
      t.string :title
      t.text :text

      t.timestamps null: false
    end
  end
end
