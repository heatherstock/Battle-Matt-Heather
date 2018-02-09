feature "poison" do
  scenario "displays 'Poison successful!' message" do
    srand(6)
    sign_in_and_play
    click_button("Poison player 2")
    expect(page).to have_content("-- Poison successful! Matt: 98HP")
  end
end
