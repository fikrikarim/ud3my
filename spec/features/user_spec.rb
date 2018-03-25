require 'rails_helper'

feature 'User system' do
  describe "instructor" do

    before(:each) do
        @instructor = create(:instructor)
        login(@instructor)
    end

    scenario "can visit students page from root path" do
        visit root_path
        expect(page).to have_link "Students", href: users_path
    end

    scenario "when visit students page, there are informations about students" do
        student1 = create(:student)
        student2 = create(:student2)
        group1 = create(:group)
        group2 = create(:group2)
        group1.users<<(student1)
        group2.users<<(student2)
        visit users_path

        expect(page).to have_content student1.first_name
        expect(page).to have_content student1.last_name
        expect(page).to have_content student1.student_id
        expect(page).to have_content student1.group.name

        expect(page).to have_content student2.first_name
        expect(page).to have_content student2.last_name
        expect(page).to have_content student2.student_id
        expect(page).to have_content student2.group.name
    end
  end
end