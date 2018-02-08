def sign_in_and_play
  visit("/")
  fill_in :player_1, with: "Heather"
  fill_in :player_2, with: "Matt"
  click_button "Submit"
end

def attack_cycle
  click_button("Attack player 2")
  click_button("Next turn")
  click_button("Attack player 1")
  click_button("Next turn")
end
