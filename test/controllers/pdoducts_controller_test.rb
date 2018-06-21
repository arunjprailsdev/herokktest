require 'test_helper'

class PdoductsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pdoduct = pdoducts(:one)
  end

  test "should get index" do
    get pdoducts_url
    assert_response :success
  end

  test "should get new" do
    get new_pdoduct_url
    assert_response :success
  end

  test "should create pdoduct" do
    assert_difference('Pdoduct.count') do
      post pdoducts_url, params: { pdoduct: { title: @pdoduct.title } }
    end

    assert_redirected_to pdoduct_url(Pdoduct.last)
  end

  test "should show pdoduct" do
    get pdoduct_url(@pdoduct)
    assert_response :success
  end

  test "should get edit" do
    get edit_pdoduct_url(@pdoduct)
    assert_response :success
  end

  test "should update pdoduct" do
    patch pdoduct_url(@pdoduct), params: { pdoduct: { title: @pdoduct.title } }
    assert_redirected_to pdoduct_url(@pdoduct)
  end

  test "should destroy pdoduct" do
    assert_difference('Pdoduct.count', -1) do
      delete pdoduct_url(@pdoduct)
    end

    assert_redirected_to pdoducts_url
  end
end
