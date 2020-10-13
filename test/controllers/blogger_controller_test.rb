require 'test_helper'

class BloggerControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get blogger_new_url
    assert_response :success
  end

  test "should get show" do
    get blogger_show_url
    assert_response :success
  end

  test "should get index" do
    get blogger_index_url
    assert_response :success
  end

  test "should get edit" do
    get blogger_edit_url
    assert_response :success
  end

  test "should get create" do
    get blogger_create_url
    assert_response :success
  end

  test "should get update" do
    get blogger_update_url
    assert_response :success
  end

  test "should get destroy" do
    get blogger_destroy_url
    assert_response :success
  end

end
