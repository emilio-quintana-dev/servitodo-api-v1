class JobController < ApplicationController

    def index
        user = User.find(params[:userId])

        if user
            jobs = user.jobs
            if jobs
                render json: { jobs: jobs }
            else
                render json: { error: "Error while loading jobs" }
            end
        else
            render json: { error: "Error while finding user"}
        end
        
    end

    def create
        job = Job.create(title: params[:title], user_id: params[:user_id], professional_id: params[:professional_id])

        if job
            
            pro = Professional.find(params[:professional_id])
            newCount = pro.times_hired.to_i + 1
            pro.update(times_hired: newCount)
            
            render json: {
                job: job
            }
        else
            render json: {
                error: 'Error'
            }
        end
    end

end
