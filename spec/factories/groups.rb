FactoryGirl.define do
    factory :group, class: "Group" do
        name "Thaiband 🇹🇭"
        project "Create a catchy music video"
        submission "https://www.youtube.com/watch?v=y6120QOlsfU"
        score "100"
    end

    factory :group2, class: "Group" do
        name "ภาพยนตร์ที่ฉันรู้"
        project "Search a movie that you think shows best side of humanity"
        submission "www.imdb.com/title/tt0050083/"
    end
end