require "test_helper"

class SystemsControllerTest < ActionDispatch::IntegrationTest
  test "index" do
    get "/systems.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal System.count, data.length
  end
  test "create" do
    assert_difference "System.count", 1 do
      post "/systems.json", params: { country_name: "Peru", economic_system: "Capitalism", economic_index: 1, governmental_system: "Democracy", governmental_index: 1, cultural_system: "Liberalism", cultural_index: 1, image_url: "test.jpg", wiki_page: "testwikipage.com" }
      assert_response 200
    end
  end
end
