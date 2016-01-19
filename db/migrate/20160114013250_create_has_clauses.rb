class CreateHasClauses < ActiveRecord::Migration
  def change
    create_table :has_clauses do |t|
      t.references :user, index: true, foreign_key: true
      t.references :clause, index: true, foreign_key: true
      t.boolean :seleccionada

      t.timestamps null: false
    end
  end
end
