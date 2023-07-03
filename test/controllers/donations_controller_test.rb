require "test_helper"

class DonationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @donation = donations(:one)
  end

  test "should get index" do
    get donations_url, as: :json
    assert_response :success
  end

  test "should create donation" do
    assert_difference("Donation.count") do
      post donations_url, params: { donation: { project_id: @donation.project_id, user_id: @donation.user_id } }, as: :json
    end

    assert_response :created
  end

  test "should show donation" do
    get donation_url(@donation), as: :json
    assert_response :success
  end

  test "should update donation" do
    patch donation_url(@donation), params: { donation: { project_id: @donation.project_id, user_id: @donation.user_id } }, as: :json
    assert_response :success
  end

  test "should destroy donation" do
    assert_difference("Donation.count", -1) do
      delete donation_url(@donation), as: :json
    end

    assert_response :no_content
  end
end
