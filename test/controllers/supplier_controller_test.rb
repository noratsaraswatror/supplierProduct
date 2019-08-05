require 'test_helper'

class SupplierControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get supplier_index_url
    assert_response :success
  end

  test "should get supplier_product_list" do
    get supplier_supplier_product_list_url
    assert_response :success
  end

end
