require 'test_helper'

class EvolutionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @evolution = evolutions(:one)
  end

  test "should get index" do
    get evolutions_url
    assert_response :success
  end

  test "should get new" do
    get new_evolution_url
    assert_response :success
  end

  test "should create evolution" do
    assert_difference('Evolution.count') do
      post evolutions_url, params: { evolution: { evolution_name: @evolution.evolution_name, evolved_from: @evolution.evolved_from } }
    end

    assert_redirected_to evolution_url(Evolution.last)
  end

  test "should show evolution" do
    get evolution_url(@evolution)
    assert_response :success
  end

  test "should get edit" do
    get edit_evolution_url(@evolution)
    assert_response :success
  end

  test "should update evolution" do
    patch evolution_url(@evolution), params: { evolution: { evolution_name: @evolution.evolution_name, evolved_from: @evolution.evolved_from } }
    assert_redirected_to evolution_url(@evolution)
  end

  test "should destroy evolution" do
    assert_difference('Evolution.count', -1) do
      delete evolution_url(@evolution)
    end

    assert_redirected_to evolutions_url
  end
end
