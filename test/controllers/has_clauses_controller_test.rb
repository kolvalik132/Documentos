require 'test_helper'

class HasClausesControllerTest < ActionController::TestCase
  setup do
    @has_clause = has_clauses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:has_clauses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create has_clause" do
    assert_difference('HasClause.count') do
      post :create, has_clause: { clause_id: @has_clause.clause_id, seleccionada: @has_clause.seleccionada, user_id: @has_clause.user_id }
    end

    assert_redirected_to has_clause_path(assigns(:has_clause))
  end

  test "should show has_clause" do
    get :show, id: @has_clause
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @has_clause
    assert_response :success
  end

  test "should update has_clause" do
    patch :update, id: @has_clause, has_clause: { clause_id: @has_clause.clause_id, seleccionada: @has_clause.seleccionada, user_id: @has_clause.user_id }
    assert_redirected_to has_clause_path(assigns(:has_clause))
  end

  test "should destroy has_clause" do
    assert_difference('HasClause.count', -1) do
      delete :destroy, id: @has_clause
    end

    assert_redirected_to has_clauses_path
  end
end
