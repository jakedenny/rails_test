class StaticPagesController < ApplicationController
	
	def welcome
		@math = 10*10
		@last_user_name = User.last.name
		@last_user_email = User.last.email

		@new_user = User.new
	end


	def create
		# good way to debug what is being passed in
		#puts "*****************"
		#puts params[:user]
		#puts "*****************"

		@new_user = User.new(params[:user])
		if @new_user.save
			flash[:success] = "Welcome home young one. Welcome."
			redirect_to root_url
		else
			flash[:error] = "This failed. What a tragedy. Eat a banana."
			redirect_to root_url
		end
	end

end



#def create
#    @client = Client.new(params[:client])
#    if @client.save
#      redirect_to @client
#    else
      # This line overrides the default rendering behavior, which
      # would have been to render the "create" view.
#      render :action => "new"
#    end
#  end