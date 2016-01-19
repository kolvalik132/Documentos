class MostrarController < ApplicationController
  def index
  	@join = Document.joins(:clauses, :users)
  	@us = User.joins(:documents)
  end
end
