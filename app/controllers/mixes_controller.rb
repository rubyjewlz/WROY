class MixesController < ApplicationController

	def index
		@mixes = Mix.all 
	end

	def show
		@mixes = Mix.find(params[:id])
	end

	def new
		@mixes = Mix.new
	end

	def edit
		@mixes = Mix.find(params[:id])
	end

	def create
		@mixes = Mix.new(mixes_params)

		if @mixes.save
			redirect_to @mixes
		else
			render 'new'
		end
	end

	def update
		@mixes = Mix.find(params[:id])
		if @mixes.update(mixes_params)
		redirect_to @mixes
	else
		render 'edit'
	end
end

def destroy
	@mixes = Mix.find(params[:id])
	@mixes.destroy

	redirect_to mixes_path
end

	private
	def mixes_params
		params.require(:mix).permit(:title, :text)
	end
end
