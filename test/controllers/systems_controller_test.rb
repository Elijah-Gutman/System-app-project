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
  test "update" do
    system = System.first
    patch "/systems/#{system.id}.json", params: { country_name: "Updated country_name" }
    assert_response 200

    puts puts response.body

    data = JSON.parse(response.body)
    assert_equal "Updated country_name", data["country_name"]
    assert_equal system.economic_system, data["economic_system"]
    assert_equal system.economic_index, data["economic_index"]
    assert_equal system.governmental_system, data["governmental_system"]
    assert_equal system.governmental_index, data["governmental_index"]
    assert_equal system.cultural_system, data["cultural_system"]
    assert_equal system.cultural_index, data["cultural_index"]
    assert_equal system.image_url, data["image_url"]
    assert_equal system.wiki_page, data["wiki_page"]
  end
  test "destroy" do
    assert_difference "System.count", -1 do
      delete "/systems/#{System.first.id}.json"
      assert_response 200
    end
  end
end
