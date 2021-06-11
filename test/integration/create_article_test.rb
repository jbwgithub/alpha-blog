require "test_helper"

class CreateArticleTest < ActionDispatch::IntegrationTest
  setup do
    @user = User.create(username: "johndoe", email: "johndoe@example.com",
                              password: "password", admin: false)
    sign_in_as(@user)
  end

  test "get new article form and create article" do
    get "/articles/new"
    assert_response :success
    assert_difference 'Article.count', 1 do
      post articles_path, params: { article: { title: "Testing article", description: "Integration test description", user_id: @user.id } }
      assert_response :redirect
    end
    follow_redirect!
    assert_response :success
    assert_match "Integration", response.body
  end
end
