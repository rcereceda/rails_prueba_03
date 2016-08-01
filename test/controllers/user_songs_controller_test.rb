require 'test_helper'

class UserSongsControllerTest < ActionController::TestCase
  setup do
    @user_song = user_songs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:user_songs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user_song" do
    assert_difference('UserSong.count') do
      post :create, user_song: {  }
    end

    assert_redirected_to user_song_path(assigns(:user_song))
  end

  test "should show user_song" do
    get :show, id: @user_song
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user_song
    assert_response :success
  end

  test "should update user_song" do
    patch :update, id: @user_song, user_song: {  }
    assert_redirected_to user_song_path(assigns(:user_song))
  end

  test "should destroy user_song" do
    assert_difference('UserSong.count', -1) do
      delete :destroy, id: @user_song
    end

    assert_redirected_to user_songs_path
  end
end
