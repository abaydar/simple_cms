class SubjectsController < ApplicationController
  def index
    @subjects = Subject.order("position ASC")
  end

  def show
    @subject = Subject.find(params[:id])
  end

  def new
    @subject = Subject.new
  end

  def create
    # instantiate a new obj using form params
    @subject = Subject.new(subject_params)
    # save the obj
    if @subject.save
      # if save succeeds, redirect tot he index action
      redirect_to(subjects_path)
    else
      # If save fails, redisplay the form so user can fix problems
      render("new")
    end
  end

  def edit
    @subject = Subject.find(params[:id])
  end

  def update
    @subject = Subject.find(params[:id])
    if @subject.update(subject_params)
      redirect_to(subject_path(@subject))
    else
      render("edit")
    end
  end

  def delete
    @subject = Subject.find(params[:id])
  end

  def destroy
    @subject = Subject.find(params[:id])
    @subject.destroy
    redirect_to(subjects_path)
  end

  private
    def subject_params
      params.require(:subject).permit(:name, :visible, :position)
    end
end
