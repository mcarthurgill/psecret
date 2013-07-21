class SecretsController < ApplicationController
	before_filter :authenticate_user!

	def index
		@secret = Secret.where(viewed: false).first
		if @secret
			@secret.viewed = true
		end
	end

	def create
		@secret = Secret.new(params[:secret])
		if @secret.save
			flash[:notice] = "Successfully saved!"
			redirect_to secret_path(@secret)
		else
			flash[:alert] = "Please fill out the form correctly"
			render :new
		end
	end

	def new
		@secret = Secret.new
	end

	def edit

	end

	def show
		@secret = Secret.find(params[:id])
	end

	def update

	end

	def destroy
	end

end