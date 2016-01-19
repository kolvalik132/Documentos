class AddValidateToHasClauses < ActiveRecord::Migration
  def change
    add_column :has_clauses, :validate, :boolean
  end
end
