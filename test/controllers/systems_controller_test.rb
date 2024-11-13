require "test_helper"

class SystemsControllerTest < ActionDispatch::IntegrationTest
  test "index" do
    get "/systems.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal System.count, data.length
  end
end
