class GroupsController < ApplicationController
  before_action :set_group, only: [:show, :edit, :update, :destroy, :attendants, :add_attendant, :remove_attendant]

  # GET /groups
  # GET /groups.json
  def index
    @groups = Group.all
  end

  # GET /groups/1
  # GET /groups/1.json
  def show
  end

  # GET /groups/new
  def new
    @group = Group.new
    @group.name = "Group ##{Group.count + 1}"
  end

  # GET /groups/1/edit
  def edit
  end

  # GET /groups/1/attendants
  def attendants
    @attendants = @group.users
    @students = User.where(role: 'student').where.not(group_id: @group.id).or(User.where(role: 'student', group_id: nil))
  end

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

  # POST /groups
  # POST /groups.json
  def create
    @group = Group.new(group_params)

    respond_to do |format|
      if @group.save
        format.html { redirect_to @group, notice: 'Group was successfully created.' }
        format.json { render :show, status: :created, location: @group }
      else
        format.html { render :new }
        format.json { render json: @group.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /groups/1
  # PATCH/PUT /groups/1.json
  def update
    respond_to do |format|
      if @group.update(group_params)
        format.html { redirect_to @group, notice: 'Group was successfully updated.' }
        format.json { render :show, status: :ok, location: @group }
      else
        format.html { render :edit }
        format.json { render json: @group.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /groups/1
  # DELETE /groups/1.json
  def destroy
  @group.destroy
    respond_to do |format|
      format.html { redirect_to groups_url, notice: 'Group was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_group
      @group = Group.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def group_params
      params.require(:group).permit(:name)
    end

    def attendant_params
      params.permit(:user_id, :id)
    end
end
