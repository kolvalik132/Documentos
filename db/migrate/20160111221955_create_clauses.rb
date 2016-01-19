class CreateClauses < ActiveRecord::Migration
  def change
    create_table :clauses do |t|
      t.string :name
      t.text :description

      t.timestamps null: false
    end
  end
end
