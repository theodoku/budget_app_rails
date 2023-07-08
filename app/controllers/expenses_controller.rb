class ExpensesController < ApplicationController
  before_action :set_group

  def index
    @expenses = @group.expenses.order(created_at: :desc)
  end

  def new
    @expense = Expense.new
  end

  def create
    @group = Group.find(params[:group_id])
    @expense = @group.expenses.new(expense_params)
    @expense.author = current_user
    @expense.group_id = @group.id

    if @expense.save
      @expense_group = ExpenseGroup.create(group: @group, expense: @expense)
      redirect_to group_expenses_path(@group), notice: 'Expense was successfully created.'
    else
      render :new
    end
  end

  private

  def set_group
    @group = Group.find(params[:group_id])
  end

  def expense_params
    params.require(:expense).permit(:name, :amount)
  end
end
