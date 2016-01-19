class AddDocumentIdToClauses < ActiveRecord::Migration
  def change
    add_reference :clauses, :document, index: true, foreign_key: true
  end
end
