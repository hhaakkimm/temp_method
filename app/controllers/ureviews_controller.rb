class UreviewsController < ApplicationController
  before_action :find_reviewed
  before_action :find_ureview, only: [:edit, :update, :destroy]
  before_action :check_sign_in, only: [:create, :edit, :new, :destroy, :update]
  def new
    @ureview = Ureview.new
  end

  def create
    @ureview = Ureview.new(ureview_params)
    @ureview.reviewed_id = @reviewed.id
    @ureview.user_id = current_user.id

    if @ureview.save
      redirect_to user_path(@reviewed)
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @ureview.update(ureview_params)
      redirect_to user_path(@reviewed)
    else
      render 'edit'
    end
  end

  def destroy
    @ureview.destroy
    redirect_to user_path(@reviewed)
  end

  private
    def ureview_params
      params.require(:ureview).permit(:ucomment, :uratingone, :uratingtwo, :uratingthree, :uratingfour, :uratingfive)
    end

    def find_reviewed
      @reviewed = User.find(params[:reviewed_id])
    end

    def find_ureview
      @ureview = Ureview.find(params[:id])
    end
end
