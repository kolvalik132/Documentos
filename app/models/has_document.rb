class HasDocument < ActiveRecord::Base
  #Pertenece a un user
  belongs_to :user
  #Pertener a un document
  belongs_to :document
  
 # after_create :save_has

 #def save_has
 # 	HasClause.create(user_id: user_id, clause_id: clause_id)
 #end
end
