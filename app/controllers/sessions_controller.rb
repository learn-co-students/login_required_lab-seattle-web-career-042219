class SessionsController < ApplicationController

    def new
    end

    def create
        if params[:name].nil? || params[:name].empty? 
            redirect_to(controller: 'sessions',
                action: 'new')
        else
            session[:name] = params[:name]
            redirect_to 'application/hello'
        end
    end

    def destroy
        session.destroy if session[:name]
        redirect_to 'application/hello'
    end

    def current_user
        params[:name]
    end
end