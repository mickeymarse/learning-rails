require "test_helper"

class DemonsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @demon = demons(:one)
  end

  test "should get index" do
    get demons_url
    assert_response :success
  end

  test "should get new" do
    get new_demon_url
    assert_response :success
  end

  test "should create demon" do
    assert_difference("Demon.count") do
      post demons_url, params: { demon: { email: @demon.email, first_name: @demon.first_name, last_name: @demon.last_name, phone: @demon.phone, social_media: @demon.social_media } }
    end

    assert_redirected_to demon_url(Demon.last)
  end

  test "should show demon" do
    get demon_url(@demon)
    assert_response :success
  end

  test "should get edit" do
    get edit_demon_url(@demon)
    assert_response :success
  end

  test "should update demon" do
    patch demon_url(@demon), params: { demon: { email: @demon.email, first_name: @demon.first_name, last_name: @demon.last_name, phone: @demon.phone, social_media: @demon.social_media } }
    assert_redirected_to demon_url(@demon)
  end

  test "should destroy demon" do
    assert_difference("Demon.count", -1) do
      delete demon_url(@demon)
    end

    assert_redirected_to demons_url
  end
end
