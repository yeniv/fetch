require 'test_helper'

class AppointmentsControllerTest < ActionDispatch::IntegrationTest
  test "should get deny" do
    get appointments_deny_url
    assert_response :success
  end

  test "should get accept" do
    get appointments_accept_url
    assert_response :success
  end

  test "should get show" do
    get appointments_show_url
    assert_response :success
  end

end
