feature "attack player 2" do
  scenario "displays 'Attack successful!' message" do
    srand(6)
    sign_in_and_play
    click_button("Attack player 2")
    expect(page).to have_content("-- Attack successful! Matt: 91HP")
  end
end
