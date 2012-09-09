require 'test_helper'

class PontinhosControllerTest < ActionController::TestCase
  setup do
    @pontinho = pontinhos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pontinhos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pontinho" do
    assert_difference('Pontinho.count') do
      post :create, pontinho: @pontinho.attributes
    end

    assert_redirected_to pontinho_path(assigns(:pontinho))
  end

  test "should show pontinho" do
    get :show, id: @pontinho
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pontinho
    assert_response :success
  end

  test "should update pontinho" do
    put :update, id: @pontinho, pontinho: @pontinho.attributes
    assert_redirected_to pontinho_path(assigns(:pontinho))
  end

  test "should destroy pontinho" do
    assert_difference('Pontinho.count', -1) do
      delete :destroy, id: @pontinho
    end

    assert_redirected_to pontinhos_path
  end
end
