def sign_in_and_play
  visit("/")
  fill_in :player_1, with: "Heather"
  fill_in :player_2, with: "Matt"
  click_button "Submit"
end
