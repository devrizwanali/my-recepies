class PagesController < ApplicationController
    def home 
    	redirect_to recipes_path if loggedIn?
    end
end