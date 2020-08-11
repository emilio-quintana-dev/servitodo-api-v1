class ProfessionalController < ApplicationController

    def index
        professionals = Professional.all
        render json: {
            professionals: professionals
        }
    end

    def show
        professional = Professional.find(params[:id])
        reviews = professional.reviews

        average_reviews = professional.average_reviews
        
        if professional
            render json: {
                status: "SUCCESS",
                professional: professional,
                average_reviews: average_reviews,
                reviews: reviews
            }
        else
            render json: {
                error: "Error"
            }
        end
    end
end
