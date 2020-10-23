class Api::V1::ChoresController < ApplicationController    
    def index
        chores = Chore.all
        render json: chores, except: [:created_at, :updated_at]
    end 

    def create
        chore = Chore.create(chore_params)
        render json: chore
    end

    def update 
        chore = Chore.find(params[:id])
        chore.update!(chore_params)
        render json: chore
    end 

    def destroy
        chore = Chore.find(params[:id])
        chore.destroy
        render json: {}
    end 

    private
    def chore_params
        params.require(:chore).permit(:family_member, :due_date, :description, :priority, :status)
    end

end