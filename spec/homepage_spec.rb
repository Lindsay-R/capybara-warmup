require "spec_helper"

feature "Homepage" do
  scenario "should have a homepage with the following:" do
    visit "/"

    expect(page).to have_content("RSVP App")

    expect(page).to have_link "RSVP"

  end
end


feature "new rsvp" do
  scenario "should have a New RSVP page with the following:" do
    visit "/rsvps/new"

    expect(page).to have_content("RSVP App")

    fill_in 'Name', with: 'Lindsay'

    fill_in 'Email', with: 'lrecknell@gmail.com'

    select '2', from: 'Number of Guests'

    choose 'Chicken'

    click_on "RSVP"

    expect(page).to have_content("Thanks for RSVPing!")

  end
end

feature "Homepage" do
  scenario "should have a homepage with the following:" do
    visit "/"

    expect(page).to have_content("RSVP App")

    expect(page).to have_link "RSVP"

  end
end