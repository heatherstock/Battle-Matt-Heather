feature "player 2 hit points" do
  scenario "display hit points" do
    sign_in_and_play
    expect(page).to have_content("Matt: 100HP")
  end
end
