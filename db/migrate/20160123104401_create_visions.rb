class CreateVisions < ActiveRecord::Migration
  def change
    create_table :visions do |t|
      t.string :title
      t.text :description

      t.timestamps null: false
    end
  end
end
