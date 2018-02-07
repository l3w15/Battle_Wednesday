require './app'

feature "checking the functionality of the form" do
  scenario "check that filled in, submitted forms, display the names on screen" do
    visit '/'
    fill_in('Player1', with: 'Estaban')
    fill_in('Player2', with: 'Heisenberg')
    click_button('Submit form')
    expect(page).to have_content 'Estaban' && 'Heisenberg'
  end
end

feature "checking for presence of HP" do
  scenario "battle commences and both players have 100HP" do
    visit '/'
    click_button('Submit form')
    expect(page).to have_content '100 hp'
  end
end
