require 'test_helper'

class HasDocumentsControllerTest < ActionController::TestCase
  setup do
    @has_document = has_documents(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:has_documents)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create has_document" do
    assert_difference('HasDocument.count') do
      post :create, has_document: { document_id: @has_document.document_id, user_id: @has_document.user_id }
    end

    assert_redirected_to has_document_path(assigns(:has_document))
  end

  test "should show has_document" do
    get :show, id: @has_document
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @has_document
    assert_response :success
  end

  test "should update has_document" do
    patch :update, id: @has_document, has_document: { document_id: @has_document.document_id, user_id: @has_document.user_id }
    assert_redirected_to has_document_path(assigns(:has_document))
  end

  test "should destroy has_document" do
    assert_difference('HasDocument.count', -1) do
      delete :destroy, id: @has_document
    end

    assert_redirected_to has_documents_path
  end
end
