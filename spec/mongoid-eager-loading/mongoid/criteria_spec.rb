require "spec_helper"

describe Mongoid::Criteria do

  describe "#each" do

    before :each do
      @person1 = Person.create(:title => "Sir", :age => 100, :aliases => ["D", "Durran"], :ssn => "666666666")
      @person2 = Person.create(:title => "Madam", :age => 1, :ssn => "098-76-5434")
      @person1.create_game(:score => 10)
      @person2.create_game(:score => 20)
    end

    after :each do
      Person.destroy_all
    end

    it "without includes" do
      criteria = Person.all
      criteria.collect(&:title).should == ["Sir", "Madam"]
    end

    it "with includes" do
      criteria = Person.includes(:game)
      criteria.collect(&:game).should == [@person1.game, @person2.game]
    end
  end
end
