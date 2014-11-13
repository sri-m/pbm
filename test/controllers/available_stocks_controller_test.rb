require 'test_helper'

class AvailableStocksControllerTest < ActionController::TestCase
  setup do
    @available_stock = available_stocks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:available_stocks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create available_stock" do
    assert_difference('AvailableStock.count') do
      post :create, available_stock: { price: @available_stock.price, type: @available_stock.type, units: @available_stock.units }
    end

    assert_redirected_to available_stock_path(assigns(:available_stock))
  end

  test "should show available_stock" do
    get :show, id: @available_stock
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @available_stock
    assert_response :success
  end

  test "should update available_stock" do
    patch :update, id: @available_stock, available_stock: { price: @available_stock.price, type: @available_stock.type, units: @available_stock.units }
    assert_redirected_to available_stock_path(assigns(:available_stock))
  end

  test "should destroy available_stock" do
    assert_difference('AvailableStock.count', -1) do
      delete :destroy, id: @available_stock
    end

    assert_redirected_to available_stocks_path
  end
end
