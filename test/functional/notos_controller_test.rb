require 'test_helper'

class NotosControllerTest < ActionController::TestCase
  setup do
    @noto = notos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:notos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create noto" do
    assert_difference('Noto.count') do
      post :create, :noto => { :Nota1 => @noto.Nota1, :Nota2 => @noto.Nota2, :Nota3 => @noto.Nota3, :Nota4 => @noto.Nota4, :NotaMax => @noto.NotaMax, :NotaMin => @noto.NotaMin, :Total => @noto.Total }
    end

    assert_redirected_to noto_path(assigns(:noto))
  end

  test "should show noto" do
    get :show, :id => @noto
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @noto
    assert_response :success
  end

  test "should update noto" do
    put :update, :id => @noto, :noto => { :Nota1 => @noto.Nota1, :Nota2 => @noto.Nota2, :Nota3 => @noto.Nota3, :Nota4 => @noto.Nota4, :NotaMax => @noto.NotaMax, :NotaMin => @noto.NotaMin, :Total => @noto.Total }
    assert_redirected_to noto_path(assigns(:noto))
  end

  test "should destroy noto" do
    assert_difference('Noto.count', -1) do
      delete :destroy, :id => @noto
    end

    assert_redirected_to notos_path
  end
end
