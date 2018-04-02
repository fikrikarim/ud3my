require 'rails_helper'

feature 'Static pages' do
    after(:each) do
        Warden.test_reset! 
    end

    scenario "Show 'dont have group yet' notice when the student doesn't have group yet" do
        student = create(:user)
        login_as(student)
        visit root_path
        expect(page).to have_content "It looks like you don't have any group yet. Please contact your instructor for further information."
    end
end