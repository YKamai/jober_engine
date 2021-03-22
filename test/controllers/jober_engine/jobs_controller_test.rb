require 'test_helper'

module JoberEngine
  class JobsControllerTest < ActionDispatch::IntegrationTest
    include Engine.routes.url_helpers

    test "should get index" do
      get jobs_index_url
      assert_response :success
    end

    test "should get show" do
      get jobs_show_url
      assert_response :success
    end

    test "should get new" do
      get jobs_new_url
      assert_response :success
    end

    test "should get create" do
      get jobs_create_url
      assert_response :success
    end

    test "should get update" do
      get jobs_update_url
      assert_response :success
    end

    test "should get edit" do
      get jobs_edit_url
      assert_response :success
    end

    test "should get destroy" do
      get jobs_destroy_url
      assert_response :success
    end

  end
end
