feature "Switching turns" do
  scenario "turn button redirects back to play view" do
    srand(6)
    sign_in_and_play
    click_button "Attack player 2"
    click_button "Next turn"
    expect(page).to have_content "Heather vs Matt!" && "Matt: 91HP"
  end
  scenario "After player1 attacks, it switches to player 2's turn" do
    srand(5)
    sign_in_and_play
    click_button "Attack player 2"
    click_button "Next turn"
    click_button "Attack player 1"
    expect(page).to have_content "-- Attack successful! Heather: 94HP"
  end
end
