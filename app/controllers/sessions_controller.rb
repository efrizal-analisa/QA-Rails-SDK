class SessionsController < ApplicationController
    def new
    end

    def create
    end

    def destroy
    end

    def login
        email = params[:email]
        provider = params[:provider]
        if email and provider
            quickey = QuickeyRubySdk::App.new(api_key: "inT9Ic-BhfqbRA-wgtz8Dn_WHUuAAmSI3VN0kByQpyU")
            appData = quickey.getMetaData
            acceessToken = quickey.getAccessToken(email)
            response = {
                :token => acceessToken
            }
            render json: response
        else
            response = {
                :message => "error from ruby on rails"
            }
            render json: response
        end
        # # byebug
    end
end
