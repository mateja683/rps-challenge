require 'spec_helper'

feature 'redirect to paper page' do
scenario ' allow paper' do
  visit('/')
  fill_in :player_1_name, with: 'P1'
  click_button 'Submit'
  click_button 'Paper'
  expect(page).to have_content 'P1, you have selected paper'
end
end
