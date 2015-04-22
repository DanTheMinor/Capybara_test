require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application

describe('Scrabble score path', {:type => :feature}) do
  it('Returns scrabble score for a word') do
    visit('/')
    fill_in('word', :with => 'cat')
    click_button('Send')
    expect(page).to have_content(5)
  end
end
