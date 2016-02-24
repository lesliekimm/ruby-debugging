require './author_from_params'

RSpec.describe AuthorFromParams, "#author_name" do
    it "should return author name" do
        lesliekimm = AuthorFromParams.new({ :author => { :name => "leslie kimm", :age => 27 } });
        expect(lesliekimm.author_name).to eq("leslie kimm")
    end

    it "should return nil for no author key" do
        juliekimm = AuthorFromParams.new({ :name => "julie kimm", :age => 26 });
        expect(juliekimm.author_name).to eq(nil)
    end

    it "should return author name using dig" do
        lesliekimm = AuthorFromParams.new({ :author => { :name => "leslie kimm", :age => 27 } });
        expect(lesliekimm.author_name_dig).to eq("leslie kimm")
    end
end

RSpec.describe AuthorFromParams, "#author_age" do
    it "should return author age" do
        lesliekimm = AuthorFromParams.new({ :author => { :name => "leslie kimm", :age => 27 } });
        expect(lesliekimm.age).to eq(27)
    end
end
