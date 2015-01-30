require 'test_helper'

class ConversionIssuesControllerTest < ActionController::TestCase
  setup do
    @conversion_issue = conversion_issues(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:conversion_issues)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create conversion_issue" do
    assert_difference('ConversionIssue.count') do
      post :create, conversion_issue: { comment: @conversion_issue.comment, conversion_id: @conversion_issue.conversion_id, issue_id: @conversion_issue.issue_id }
    end

    assert_redirected_to conversion_issue_path(assigns(:conversion_issue))
  end

  test "should show conversion_issue" do
    get :show, id: @conversion_issue
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @conversion_issue
    assert_response :success
  end

  test "should update conversion_issue" do
    patch :update, id: @conversion_issue, conversion_issue: { comment: @conversion_issue.comment, conversion_id: @conversion_issue.conversion_id, issue_id: @conversion_issue.issue_id }
    assert_redirected_to conversion_issue_path(assigns(:conversion_issue))
  end

  test "should destroy conversion_issue" do
    assert_difference('ConversionIssue.count', -1) do
      delete :destroy, id: @conversion_issue
    end

    assert_redirected_to conversion_issues_path
  end
end
