require './app'

feature "checking the functionality of the form" do
  scenario "check that filled in, submitted forms, display the names on screen" do
    visit '/'
    fill_in('Player1', with: 'Estaban')
    fill_in('Player2', with: 'Heisenberg')
    click_button('Submit form')
    expect(page).to have_content 'Estaban versus Heisenberg'
  end
end
