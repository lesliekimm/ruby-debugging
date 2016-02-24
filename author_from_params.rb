class AuthorFromParams
	def initialize(params)
		@params = params
	end

	def author_name
		if @params[:author]
			@params[:author][:name]
		end
	end

	def author_name_dig
		self.dig(:author, :name)
	end

	def age
		if @params[:author]
			@params[:author][:age]
		end
	end
end

# lesliekimm = AuthorFromParams.new({ :author => { :name => "leslie kimm", :age => 27 } });
#
# puts lesliekimm.author_name
# puts lesliekimm.age
#
# juliekimm = AuthorFromParams.new({ :name => "julie kimm", :age => 26 });
#
# puts juliekimm.author_name
