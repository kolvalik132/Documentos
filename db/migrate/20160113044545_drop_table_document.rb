class DropTableDocument < ActiveRecord::Migration
 def up
    drop_table :has_documents
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
