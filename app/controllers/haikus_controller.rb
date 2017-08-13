class HaikusController < ApplicationController
  def index
    @user = current_user
    @haikus = Haiku.all
  end

  def new
    @user = current_user
    @haiku = Haiku.new
  end

  def create
    @haiku = current_user.haikus.new(haiku_params)

    if @haiku.save
      redirect_to haikus_path
    else
      @errors = @haiku.errors.full_messages
      render 'new'
    end
  end

  def edit
  end

  def update
  end

  def delete
  end

  private
  def haiku_params
    params.require(:haiku).permit(:title,:first_line,:second_line, :third_line, :user_id)
  end
end
