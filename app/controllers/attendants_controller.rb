class AttendantsController < ApplicationController
    before_action :set_group
    before_action :authorize_group
    after_action :verify_authorized

    # POST /groups/1/add_attendant
    def add_attendant
        id = attendant_params[:user_id]
        @group.users<<(User.find(id))
        redirect_to group_attendants_path(@group), notice: 'A student was successfully added' 
    end

    # DELETE /groups/1/remove_attendant
    def remove_attendant
        id = attendant_params[:user_id]
        @group.users.delete(id)
        redirect_to group_attendants_path(@group), notice: 'A student was successfully removed' 
    end

    private

        # Use callbacks to share common setup or constraints between actions.
        def set_group
            @group = Group.find(params[:id])
        end

        def attendant_params
            params.permit(:user_id, :id)
        end

        def authorize_group
            authorize @group
        end
end
