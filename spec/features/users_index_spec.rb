require 'rails_helper'

feature 'Users index' do

    before do
        Capybara.current_driver = :webkit
    end

    before(:all) do
        visit '/users/new'
        fill_in 'user_name', with: "Jim"
        fill_in 'user_age', with: 30
        click_button 'Create User'
    end

    it 'displays all users in database' do

        visit '/users'
        expect(page).to have_content('Jim')
        expect(page).to have_content(30)

    end

    it 'has ability to delete user' do

        visit '/users'
        first(:link, 'Destroy').click

        keypress = "var e = $.Event('keydown', { keyCode: 13 }); $('body').trigger(e);"
        page.driver.execute_script(keypress)

    end


end
