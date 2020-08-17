class ReviewsController < ApplicationController
    def create
        job = Job.find(params[:id])
        if job
            review = Review.create(content: params[:content], rating: params[:rating].to_i, job_id: job.id, user_id: job.user.id, professional_id: job.professional.id)
            if review
                render json: { status: "SUCCESS", review: review }
            else
                render json: { error: "ERROR" }
            end     
        else
            render json: { error: "ERROR"}
        end
    end
end
