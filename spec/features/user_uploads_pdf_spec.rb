require "rails_helper"
require "capybara_discoball"

RSpec.feature "user uploads pdf" do
  scenario "parses pdf text" do
    pdf_server = Capybara::Discoball.spin(FakePdfSource)

    visit root_path

    fill_in "PDF Url", with: "#{pdf_server}/valid.pdf"
    click_on "Submit"

    expect(page).to have_content 'Code Samples'
  end
end
