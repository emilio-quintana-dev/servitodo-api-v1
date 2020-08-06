class ProfessionalController < ApplicationController
    def index
        professionals = Professional.all
        render json: {
            professionals: professionals
        }
    end
end
