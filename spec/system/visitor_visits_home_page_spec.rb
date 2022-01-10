require 'rails_helper'

describe 'Visitor visits home page' do
  it 'successfully' do
    visit root_path

    expect(page).to have_content('Bem vindo ao seu chat favorito!')
    expect(page).to have_selector('.navbar-brand', text: 'LanguagesChat')
    expect(current_path).to eq('/')
  end
end