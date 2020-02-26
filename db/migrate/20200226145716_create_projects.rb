class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.string :category
      t.text :description
      t.string :client
      t.datetime :date
      t.integer :priority

      t.timestamps
    end
  end
end
