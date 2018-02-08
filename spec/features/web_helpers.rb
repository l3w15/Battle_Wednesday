def sign_in_and_play
  visit '/'
  fill_in('Player1', with: 'Esteban')
  fill_in('Player2', with: 'Heisenberg')
  click_button('Submit form')
end
