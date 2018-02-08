require './app'

feature "checking battle functionality" do
  scenario "battle commences and both players have 100HP" do
    sign_in_and_play
    expect(page).to have_content 'Esteban' && 'Heisenberg'
    expect(page).to have_content '100 hp'
  end

  scenario "player 1 attacks player 2" do
    sign_in_and_play
    click_button "Attack!"
    expect(page).to have_content 'Esteban attacked Heisenberg'
  end
end
