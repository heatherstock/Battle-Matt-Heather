feature "losing the game" do
  scenario "player 2 reaches 0 points first" do
    srand(6)
    sign_in_and_play
    19.times { attack_cycle }
    click_button("Attack player 2")
    expect(page).to have_content("Matt loses!!!!!!!!")
  end
end
