class CreateForms < ActiveRecord::Migration[5.2]
  def change
    create_table :forms do |t|
      t.string :name
      t.string :alias
      t.string :type
      t.boolean :active, default: true
      t.belongs_to :structure, foreign_key: true
      t.belongs_to :user, foreign_key: true

      t.timestamps
    end
  end
end
