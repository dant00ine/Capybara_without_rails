require 'rails_helper'

RSpec.describe User, type: :model do

    context "With valid attributes" do
        it "should save" do
            expect(build(:user)).to be_valid
        end
    end

    context "With invalid attributes" do
        it "should not save if name field is blank" do
            expect(build(:user, name: '')).to be_invalid
        end
        it "should not save if name field is too short" do
            expect(build(:user, name: "ba")).to be_invalid
        end
        it "should not save if user age is too low" do
            expect(build(:user, age: 15)).to be_invalid
        end
    end

end
