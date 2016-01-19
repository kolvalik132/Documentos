class CreateHasClause < ActiveRecord::Migration
 def up
    drop_table :has_clauses
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
