class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  around_action :antes_e_depois

	private
	def antes_e_depois
		logger.info "Antes de #{params[:action]}: #{Time.now}"
		yield
		logger.info "Depois de #{params[:action]}: #{Time.now}"
	end



end
