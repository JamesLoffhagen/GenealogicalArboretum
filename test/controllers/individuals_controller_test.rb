require 'test_helper'

class IndividualsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @individual = individuals(:one)
  end

  test "should get index" do
    get individuals_url
    assert_response :success
  end

  test "should get new" do
    get new_individual_url
    assert_response :success
  end

  test "should create individual" do
    assert_difference('Individual.count') do
      post individuals_url, params: { individual: { cause_death: @individual.cause_death, date_birth: @individual.date_birth, date_death: @individual.date_death, gender: @individual.gender, misc_notes: @individual.misc_notes, name_familiar: @individual.name_familiar, name_first: @individual.name_first, name_last: @individual.name_last, name_maiden: @individual.name_maiden, name_middle: @individual.name_middle, place_birth: @individual.place_birth } }
    end

    assert_redirected_to individual_url(Individual.last)
  end

  test "should show individual" do
    get individual_url(@individual)
    assert_response :success
  end

  test "should get edit" do
    get edit_individual_url(@individual)
    assert_response :success
  end

  test "should update individual" do
    patch individual_url(@individual), params: { individual: { cause_death: @individual.cause_death, date_birth: @individual.date_birth, date_death: @individual.date_death, gender: @individual.gender, misc_notes: @individual.misc_notes, name_familiar: @individual.name_familiar, name_first: @individual.name_first, name_last: @individual.name_last, name_maiden: @individual.name_maiden, name_middle: @individual.name_middle, place_birth: @individual.place_birth } }
    assert_redirected_to individual_url(@individual)
  end

  test "should destroy individual" do
    assert_difference('Individual.count', -1) do
      delete individual_url(@individual)
    end

    assert_redirected_to individuals_url
  end
end
