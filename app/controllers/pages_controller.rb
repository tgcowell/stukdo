class PagesController < ApplicationController
	def home
	end

	def about
	end

	def home
		if current_user
			redirect_to tasks_path
		end
	end
