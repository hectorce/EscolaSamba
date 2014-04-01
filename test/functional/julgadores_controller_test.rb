require 'test_helper'

class JulgadoresControllerTest < ActionController::TestCase
  setup do
    @julgadore = julgadores(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:julgadores)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create julgadore" do
    assert_difference('Julgadore.count') do
      post :create, :julgadore => { :IndicacaoJulgador => @julgadore.IndicacaoJulgador, :NomeJulgador => @julgadore.NomeJulgador, :StatusJulgador => @julgadore.StatusJulgador }
    end

    assert_redirected_to julgadore_path(assigns(:julgadore))
  end

  test "should show julgadore" do
    get :show, :id => @julgadore
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @julgadore
    assert_response :success
  end

  test "should update julgadore" do
    put :update, :id => @julgadore, :julgadore => { :IndicacaoJulgador => @julgadore.IndicacaoJulgador, :NomeJulgador => @julgadore.NomeJulgador, :StatusJulgador => @julgadore.StatusJulgador }
    assert_redirected_to julgadore_path(assigns(:julgadore))
  end

  test "should destroy julgadore" do
    assert_difference('Julgadore.count', -1) do
      delete :destroy, :id => @julgadore
    end

    assert_redirected_to julgadores_path
  end
end
