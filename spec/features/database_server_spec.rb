# frozen_string_literal: true

require 'spec_helper'

feature 'setting key value pairs' do
  scenario 'user can write in their key value pair' do
    visit '/set?test_key=test_value'
    expect(page.status_code).to eq 200
    expect(page).to have_content('You saved {"test_key"=>"test_value"}')
  end
end
