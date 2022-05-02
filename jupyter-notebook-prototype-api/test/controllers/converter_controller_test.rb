require "test_helper"

class ConverterControllerTest < ActionDispatch::IntegrationTest
  test "should get convert" do
    get converter_convert_url
    assert_response :success
  end
end
