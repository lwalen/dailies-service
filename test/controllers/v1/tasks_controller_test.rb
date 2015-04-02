
require 'test_helper'

class V1::TasksControllerTest < ActionController::TestCase

  test "should get index" do
    get :index, format: :json
    assert_response :success
    assert_not_nil assigns(:tasks)
  end

  test "should get show" do
    task = tasks(:wake_up)

    get :show, format: :json, id: task.id
    assert_response :success
    assert_not_nil assigns(:task)
  end
end
