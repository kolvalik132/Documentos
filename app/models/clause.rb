class Clause < ActiveRecord::Base

	#Clausula pertenece a un documento
	belongs_to :document


	#Relacion con la tabla intermedia entre users y clauses
	has_many :has_clauses
	has_many :users, through: :has_clauses

	#Valido que el campo name no este vacio
	validates :name, presence: true
	#Valido que el campo description no este vacio
	validates :description, presence:true

	
	#after_create :save_documents

	#Custom setter
	#def documents=(value)
	#	@documents = value
	#end

	#def save_documents
	#	@documents.each do |document_id|
	#		Clause.create(document_id: document_id)
	#	end
	#end
end
