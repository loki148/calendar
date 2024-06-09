class GroupsController < ApplicationController

    before_action :set_group, only: [:edit, :update, :destroy]


    def index
        @groups = Group.all

        
    end



    def new
        @group = Group.new
    end

    def create
        @group = Group.new(group_params)

        if @group.save
            redirect_to groups_url
        else
            render 'new', status: :unprocessable_entity
        end
    end

    def edit
    end

    def update
        if @group.update(group_params)
            redirect_to groups_url
        else
            render 'edit', status: :unprocessable_entity
        end
    end

    def destroy
        @group.delete
        redirect_to groups_url
    end


    private
    def group_params
        params.require(:group).permit(:group, :color)
    end

    def set_group
        @group = Group.find(params[:id])

    end

end