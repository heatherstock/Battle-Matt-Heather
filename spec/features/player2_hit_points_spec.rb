feature "player 2 hit points" do
  scenario "display hit points" do
    visit("/")
    fill_in :player_1, with: "Heather"
    fill_in :player_2, with: "Matt"
    click_button "Submit"
    expect(page).to have_content("Matt: 100HP")
  end
end
