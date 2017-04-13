require 'rails_helper'

feature "Users CRUD" do

    it "responds to input within name field" do
        visit '/users/new'
        fill_in 'user_name', with: "Jim"
        fill_in 'user_age', with: 30
        click_button 'Create User'

        expect(page).to have_content('User was successfully created.')
    end




end
