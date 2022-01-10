require 'rails_helper'

describe 'visitor logs in' do
  it 'and makes an account' do
    visit root_path
    click_on 'Faça Login'
    click_on 'Cadastre-se'
    fill_in 'Email', with: 'usuario@gmail.com'
    fill_in 'Senha', with: '123356'C
    fill_in 'Confirme a senha', with: '123356'
    click_on 'Enviar'

    expect(page).to have_content('Usuario cadastrado com sucesso!')
    expect(current_path).to be(root_path)
  end

  it 'successfully' do
    visit root_path
    click_on 'Faça Login'
    fill_in 'Email', with: 'usuario@gmail.com'
    fill_in 'Senha', with: '123356'
    click_on 'Enviar'

    expect(page).to have_content('Usuario logado com sucesso!')
    expect(current_path).to be(root_path)
  end
end