require 'rails_helper'

feature 'Group' do
    describe "instructor" do
        before(:each) do
            @instructor = create(:instructor)
            login_as(@instructor)
        end

        after(:each) do
            Warden.test_reset! 
        end

        scenario "can visit students page from root path" do
            visit root_path
            expect(page).to have_link "Groups", href: groups_path
        end

        scenario "when visit groups page, there are informations about groups" do
            student1 = create(:student)
            student2 = create(:student2)
            group1 = create(:group)
            group2 = create(:group2)
            visit groups_path

            expect(page).to have_content '0'
            expect(page).to have_content group1.name
            expect(page).to have_content group2.name

            group1.users<<(student1)
            group1.users<<(student2)
            visit groups_path
            expect(page).to have_content '2'
        end

        scenario "when visit attendants page, show students who belong to that page" do
            student1 = create(:student)
            student2 = create(:student2)
            group1 = create(:group)

            group1.users<<(student1)
            group1.users<<(student2)

            visit group_attendants_path(group1)
            expect(page).to have_content student1.first_name
            expect(page).to have_content student2.last_name
        end

        scenario "can add user to group from attendants page" do
            student1 = create(:student)
            group1 = create(:group)
            
            expect(group1.users.length).to be(0)
            visit group_attendants_path(group1)
            expect(page).to have_link "Add attendant", href: add_attendant_path(user_id: student1.id, id: group1.id)
            
            find_link('Add attendant').click
            group1.reload
            expect(group1.users.length).to be(1)
            expect(page).to have_link "Remove attendant", href: remove_attendant_path(user_id: student1.id, id: group1.id)
        end

        scenario "can remove user to group from attendants page" do
            student1 = create(:student)
            group1 = create(:group)
            group1.users<<(student1)
            
            expect(group1.users.length).to be(1)
            visit group_attendants_path(group1)
            expect(page).to have_link "Remove attendant", href: remove_attendant_path(user_id: student1.id, id: group1.id)
            
            find_link('Remove attendant').click
            group1.reload
            expect(group1.users.length).to be(0)
            expect(page).to have_link "Add attendant", href: add_attendant_path(user_id: student1.id, id: group1.id)
        end
    end
    
end