feature "attack player 2" do
  scenario "displays 'Attack successful!' message" do
    sign_in_and_play
    click_button("Attack player 2")
    expect(page).to have_content("Attack successful! Matt hp reduced to 98")
  end
end
