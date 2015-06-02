require 'test_helper'

class NewLifeEventsControllerTest < ActionController::TestCase
  setup do
    @new_life_event = new_life_events(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:new_life_events)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create new_life_event" do
    assert_difference('NewLifeEvent.count') do
      post :create, new_life_event: { Description: @new_life_event.Description, Title: @new_life_event.Title, Year: @new_life_event.Year }
    end

    assert_redirected_to new_life_event_path(assigns(:new_life_event))
  end

  test "should show new_life_event" do
    get :show, id: @new_life_event
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @new_life_event
    assert_response :success
  end

  test "should update new_life_event" do
    patch :update, id: @new_life_event, new_life_event: { Description: @new_life_event.Description, Title: @new_life_event.Title, Year: @new_life_event.Year }
    assert_redirected_to new_life_event_path(assigns(:new_life_event))
  end

  test "should destroy new_life_event" do
    assert_difference('NewLifeEvent.count', -1) do
      delete :destroy, id: @new_life_event
    end

    assert_redirected_to new_life_events_path
  end
end
