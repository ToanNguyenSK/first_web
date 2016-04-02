require 'test_helper'

class HighScore1sControllerTest < ActionController::TestCase
  setup do
    @high_score1 = high_score1s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:high_score1s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create high_score1" do
    assert_difference('HighScore1.count') do
      post :create, high_score1: { game: @high_score1.game, name: @high_score1.name, score: @high_score1.score }
    end

    assert_redirected_to high_score1_path(assigns(:high_score1))
  end

  test "should show high_score1" do
    get :show, id: @high_score1
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @high_score1
    assert_response :success
  end

  test "should update high_score1" do
    patch :update, id: @high_score1, high_score1: { game: @high_score1.game, name: @high_score1.name, score: @high_score1.score }
    assert_redirected_to high_score1_path(assigns(:high_score1))
  end

  test "should destroy high_score1" do
    assert_difference('HighScore1.count', -1) do
      delete :destroy, id: @high_score1
    end

    assert_redirected_to high_score1s_path
  end
end
