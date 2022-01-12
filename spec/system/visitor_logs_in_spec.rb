require 'rails_helper'

describe 'visitor logs in' do
  it 'and makes an account' do
    visit root_path
    click_on 'Login'
    click_on 'Inscrever-se'
    fill_in 'E-mail', with: 'usuario@gmail.com'
    fill_in 'Senha', with: '123356'
    fill_in 'Confirme sua senha', with: '123356'
    fill_in 'Nome de usuario', with: 'Oliva'
    click_on 'Inscrever-se'

    expect(page).to have_content('Bem vindo! Você realizou seu registro com sucesso.')
    expect(page).to have_selector('.nav-item', text: 'Oliva')
    expect(page).to have_link('Logout')
    expect(current_path).to eq(root_path)
  end

  it 'successfully' do
    user = create(:user)

    visit root_path
    click_on 'Login'
    fill_in 'E-mail', with: user.email
    fill_in 'Senha', with: user.password
    click_on 'Log in'

    expect(page).to have_content('Login efetuado com sucesso.')
    expect(current_path).to eq(root_path)
  end
end