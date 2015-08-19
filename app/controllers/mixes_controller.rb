class MixesController < ApplicationController

	def index
		@mixes = Mix.all 
	end

	def show
		@mixes = Mix.find(params[:id])
	end

	def new
	end

	def create
		@mixes = Mix.new(mixes_params)

		@mixes.save
		redirect_to @mixes
	end

	private
	def mixes_params
		params.require(:mixes).permit(:title, :text)
	end
end
