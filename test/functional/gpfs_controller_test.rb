require 'test_helper'

class GpfsControllerTest < ActionController::TestCase
  setup do
    @gpf = gpfs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:gpfs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create gpf" do
    assert_difference('Gpf.count') do
      post :create, gpf: { cbcount: @gpf.cbcount, farmer_id: @gpf.farmer_id, fat: @gpf.fat, lbcount: @gpf.lbcount, litconsume: @gpf.litconsume, litgive: @gpf.litgive, litres: @gpf.litres, litsell: @gpf.litsell, price: @gpf.price, wheresell: @gpf.wheresell, whoconsa: @gpf.whoconsa, whoconsb: @gpf.whoconsb }
    end

    assert_redirected_to gpf_path(assigns(:gpf))
  end

  test "should show gpf" do
    get :show, id: @gpf
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @gpf
    assert_response :success
  end

  test "should update gpf" do
    put :update, id: @gpf, gpf: { cbcount: @gpf.cbcount, farmer_id: @gpf.farmer_id, fat: @gpf.fat, lbcount: @gpf.lbcount, litconsume: @gpf.litconsume, litgive: @gpf.litgive, litres: @gpf.litres, litsell: @gpf.litsell, price: @gpf.price, wheresell: @gpf.wheresell, whoconsa: @gpf.whoconsa, whoconsb: @gpf.whoconsb }
    assert_redirected_to gpf_path(assigns(:gpf))
  end

  test "should destroy gpf" do
    assert_difference('Gpf.count', -1) do
      delete :destroy, id: @gpf
    end

    assert_redirected_to gpfs_path
  end
end
