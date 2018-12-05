# frozen_string_literal: true

require 'spec_helper'

feature 'can view index page' do
  scenario 'user can visit home' do
    visit '/'
    expect(page).to have_content('HI!!!!!!!')
  end
  scenario 'user can enter a key value pair directly into URL query string' do
    visit '/set?Hi=greeting'
    visit '/get?key=Hi'
    expect(page.status_code).to eq 200
    expect(page).to have_content('greeting')
  end
end
