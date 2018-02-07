require './app'

feature "checking for names and presence of HP" do
  scenario "battle commences and both players have 100HP" do
    visit '/'
    fill_in('Player1', with: 'Estaban')
    fill_in('Player2', with: 'Heisenberg')
    click_button('Submit form')
    expect(page).to have_content 'Estaban' && 'Heisenberg'
    expect(page).to have_content '100 hp'
  end
end
