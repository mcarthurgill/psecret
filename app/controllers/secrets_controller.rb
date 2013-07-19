class SecretsController < ApplicationController
	def index
		@secrets = Secret.all
	end

	def create
		@secret = Secret.create(params[:secret])
		redirect_to secret_path(@secret)
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