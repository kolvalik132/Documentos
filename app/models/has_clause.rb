class HasClause < ActiveRecord::Base
  #Pertenece a un user
  belongs_to :user
  #Pertenece a una clause
  belongs_to :clause
end
