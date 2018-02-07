feature "name input form" do
  scenario "display welcome message" do
    visit("/")
    fill_in :player_1, with: "Heather"
    fill_in :player_2, with: "Matt"
    click_button "Submit"
    expect(page).to have_content("Welcome Heather and Matt!")
  end
end
