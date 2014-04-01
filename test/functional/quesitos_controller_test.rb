require 'test_helper'

class QuesitosControllerTest < ActionController::TestCase
  setup do
    @quesito = quesitos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:quesitos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create quesito" do
    assert_difference('Quesito.count') do
      post :create, :quesito => { :NomeQuesito => @quesito.NomeQuesito, :StatusQuesito => @quesito.StatusQuesito }
    end

    assert_redirected_to quesito_path(assigns(:quesito))
  end

  test "should show quesito" do
    get :show, :id => @quesito
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @quesito
    assert_response :success
  end

  test "should update quesito" do
    put :update, :id => @quesito, :quesito => { :NomeQuesito => @quesito.NomeQuesito, :StatusQuesito => @quesito.StatusQuesito }
    assert_redirected_to quesito_path(assigns(:quesito))
  end

  test "should destroy quesito" do
    assert_difference('Quesito.count', -1) do
      delete :destroy, :id => @quesito
    end

    assert_redirected_to quesitos_path
  end
end
