require './author_from_params'
require 'byebug'

RSpec.describe AuthorFromParams, "#author_name" do
    before :each do
        @lesliekimm = AuthorFromParams.new({ :author => { :name => "leslie kimm", :age => 27 } });
    end

    it "should return author name" do
        expect(@lesliekimm.author_name).to eq("leslie kimm")
    end

    it "should return nil for no author key" do
        juliekimm = AuthorFromParams.new({ :name => "julie kimm", :age => 26 });
        expect(juliekimm.author_name).to eq(nil)
    end

    it "should return author name using dig" do
        expect(@lesliekimm.author_name_dig).to eq("leslie kimm")
    end
end

RSpec.describe AuthorFromParams, "#author_age" do
    before :each do
        @lesliekimm = AuthorFromParams.new({ :author => { :name => "leslie kimm", :age => 27 } });
    end

    it "should return author age" do
        expect(@lesliekimm.age).to eq(27)
    end
end

RSpec.describe AuthorFromParams, "#show" do
    before :each do
        @lesliekimm = AuthorFromParams.new({ :author => { :name => "leslie kimm", :age => 27 } });
    end

    it "should show" do
        @lesliekimm.show
    end
end
