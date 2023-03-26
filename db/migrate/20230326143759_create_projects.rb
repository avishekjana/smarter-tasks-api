class CreateProjects < ActiveRecord::Migration[7.0]
  def change
    create_table :projects do |t|
      t.string :name
      t.belongs_to :organisation, null: false, foreign_key: true

      t.timestamps
    end
  end
end