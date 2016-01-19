class Document < ActiveRecord::Base

	#Un document puede tener muchas clauses
	has_many :clauses
	##Relacion con la tabla intermedia entre users y documents
	has_many :has_documents
	has_many :users, :through => :has_documents

	#Valida que title no este vacio y que no se repita
	validates :title, presence: true, uniqueness: true
	#Valida que body no este vacio y tenga un minimo de 20 caracteres
	validates :body, presence: true, length: {minimum: 20}

end
