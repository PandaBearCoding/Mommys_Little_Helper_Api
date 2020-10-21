class Api::V1::GoalsController < ApplicationController    
    def index
        goals = Goal.all
        render json: goals, except: [:created_at, :updated_at]
    end 

    def create
        goal = Goal.create(goal_params)
        render json: goal
    end

    def update 
        goal = Goal.find(params[:id])
        goal.update!(goal_params)
        render json: goal
    end 

    def destroy
        goal = Goal.find(params[:id])
        goal.destroy
        render json: {}
    end 

    private
    def goal_params
        params.require(:goal).permit(:total_points, :current_points, :reward)
    end
    
end