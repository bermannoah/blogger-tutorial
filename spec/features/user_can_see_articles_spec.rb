require_relative '../rails_helper'

RSpec.describe "When a user visits '/'" do
  it "they see a list of articles" do
    create_list(:article, 2)

    visit '/'

    expect(page).to have_content("Article 1")
    expect(page).to have_content("Article 2")
  end
end