class ProfessionalsController < ApplicationController

    def index
        professionals = Professional.all
        render json: {
            professionals: professionals
        }
    end

    def create
        category = Category.find_by(name: params[:category])

        pro = Professional.create(name: params[:name], email: params[:email],
        time_in_bussiness: params[:time_in_bussiness], introduction: params[:introduction], zip_code: params[:zip_code],
        estimated_cost: params[:estimated_cost], category_id: category.id, img_url: params[:img_url])

        if pro
            render json: {
                status: "SUCCESS",
                professional: pro
            }
        else
            render json: {
                error: "ERROR"
            }
        end
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
