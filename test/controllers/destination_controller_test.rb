require 'test_helper'

class DestinationControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get destination_new_url
    assert_response :success
  end

  test "should get show" do
    get destination_show_url
    assert_response :success
  end

  test "should get index" do
    get destination_index_url
    assert_response :success
  end

  test "should get edit" do
    get destination_edit_url
    assert_response :success
  end

  test "should get create" do
    get destination_create_url
    assert_response :success
  end

  test "should get update" do
    get destination_update_url
    assert_response :success
  end

  test "should get destroy" do
    get destination_destroy_url
    assert_response :success
  end

end
