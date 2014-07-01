require "spec_helper"

feature "Homepage" do
  scenario "should have a title" do
    visit "/"

    expect(page).to have_content("RSVP App")

    expect(page).to have_link "RSVP"

  end
end
