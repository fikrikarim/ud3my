require 'rails_helper'

feature 'Static pages' do
    scenario "Show 'dont have group yet' notice when the student doesn't have group yet" do
        student = create(:user)
        login(student)
        expect(page).to have_content "It looks like you don't have any group yet. Please contact your instructor for further information."
    end
end