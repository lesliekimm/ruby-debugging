class AuthorFromParams
	attr_accessor :params

	def initialize(params)
		@params = params
	end

	def author_name
		if @params[:author]
			@params[:author][:name]
		end
	end

	def author_name_dig
		@params.dig(:author, :name)
	end

	def age
		if @params[:author]
			@params[:author][:age]
		end
	end

	def show
		(:render).source_location
	end
end


# h = { foo: {bar: {baz: 1}}}
#
# h.dig(:foo, :bar, :baz)           #=> 1
# h.dig(:foo, :zot, :xyz)           #=> nil
#
# g = { foo: [10, 11, 12] }
# g.dig(:foo, 1)
