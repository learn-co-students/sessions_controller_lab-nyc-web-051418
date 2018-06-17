require 'rails_helper'

describe 'login' do

  it 'before login, login page is presented' do
    visit "/"
    expect(page).to have_css("h1", text: "Please, log in")
  end

  it 'logins succesfully' do
    visit "/"
    fill_in 'name', with: "Alberto"
    click_on "login"
    expect(page).to have_content("Hi, Alberto.")
  end

  it 'if login is empty, returns to login page' do
    visit "/"
    fill_in 'name', with: ""
    click_on "login"
    expect(page).to have_css("h1", text: "Please, log in")
  end

end

describe 'logout' do

  it 'logouts succesfully' do
    visit "/"
    fill_in 'name', with: "Alberto"
    click_on "login"
    click_on "logout"
    expect(page).to have_css("h1", text: "Please, log in")
  end

end
