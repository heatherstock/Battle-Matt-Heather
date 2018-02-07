feature "name input form" do
  scenario "display welcome message" do
    sign_in_and_play
    expect(page).to have_content("Heather vs Matt!")
  end
end
