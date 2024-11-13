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
  test "show" do
    get "/systems/#{System.first.id}.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal ["id", "country_name", "economic_system", "economic_index", "governmental_system", "governmental_index", "cultural_system", "cultural_index", "image_url", "wiki_page", "created_at", "updated_at"], data.keys
  end
end
