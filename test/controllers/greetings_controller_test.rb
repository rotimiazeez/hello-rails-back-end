require 'test_helper'

class GreetingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @greeting = greetings(:one)
  end

  test 'should get index' do
    get greetings_url, as: :json
    assert_response :success
  end

  test 'should create greeting' do
    assert_difference('Greeting.count') do
      post greetings_url, params: { greeting: {} }, as: :json
    end

    assert_response 201
  end

  test 'should show greeting' do
    get greeting_url(@greeting), as: :json
    assert_response :success
  end

  test 'should update greeting' do
    patch greeting_url(@greeting), params: { greeting: {} }, as: :json
    assert_response 200
  end

  test 'should destroy greeting' do
    assert_difference('Greeting.count', -1) do
      delete greeting_url(@greeting), as: :json
    end

    assert_response 204
  end
end
