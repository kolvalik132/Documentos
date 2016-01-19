class User < ActiveRecord::Base
	#Relacion con la tabla intermedia entre users y clauses
	has_many :has_clauses
	has_many :clauses, through: :has_clauses
	
	#Relacion con la tabla intermedia entre users y documents
	has_many :has_documents
	has_many :documents, through: :has_documents


end
