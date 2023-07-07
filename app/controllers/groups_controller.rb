class GroupsController < ApplicationController
  def index
    @groups = Group.where(author_id: current_user)
    @expenses = Expense.where(author_id: current_user)
    @expense_groups = ExpenseGroup.all
    @form_submitted = params[:form_submitted] == 'true'
    @group = @groups.sample if @groups.present?
  end

  def new
    @group = Group.new
  end

  def create
    @group = current_user.groups.new(group_params)
    if @group.save
      redirect_to groups_path, notice: 'Group was successfully created.'
    else
      render :new
    end
  end

  private

  def group_params
    params.require(:group).permit(:name, :icon, :author_id)
  end
end
