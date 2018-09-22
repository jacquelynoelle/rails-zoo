require "test_helper"

describe AnimalsController do
  it "should get index" do
    get animals_index_url
    value(response).must_be :success?
  end

  it "should get show" do
    get animals_show_url
    value(response).must_be :success?
  end

  it "should get new" do
    get animals_new_url
    value(response).must_be :success?
  end

  it "should get create" do
    get animals_create_url
    value(response).must_be :success?
  end

  it "should get edit" do
    get animals_edit_url
    value(response).must_be :success?
  end

  it "should get update" do
    get animals_update_url
    value(response).must_be :success?
  end

  it "should get destroy" do
    get animals_destroy_url
    value(response).must_be :success?
  end

end
