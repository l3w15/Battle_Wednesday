require './app'

feature "Checking homepage works" do
  scenario "loading the website to see if the homepage works" do
  visit '/'#localhost:9292
  expect(page).to have_content 'Testing Infrastructure working!'
  end
end