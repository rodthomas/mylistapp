require 'test_helper'

class MylistsControllerTest < ActionController::TestCase
  setup do
    @mylist = mylists(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mylists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mylist" do
    assert_difference('Mylist.count') do
      post :create, mylist: { itemsPerPack: @mylist.itemsPerPack, price: @mylist.price, productName: @mylist.productName, quantity: @mylist.quantity, unit: @mylist.unit }
    end

    assert_redirected_to mylist_path(assigns(:mylist))
  end

  test "should show mylist" do
    get :show, id: @mylist
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mylist
    assert_response :success
  end

  test "should update mylist" do
    patch :update, id: @mylist, mylist: { itemsPerPack: @mylist.itemsPerPack, price: @mylist.price, productName: @mylist.productName, quantity: @mylist.quantity, unit: @mylist.unit }
    assert_redirected_to mylist_path(assigns(:mylist))
  end

  test "should destroy mylist" do
    assert_difference('Mylist.count', -1) do
      delete :destroy, id: @mylist
    end

    assert_redirected_to mylists_path
  end
end
