class ComplaintsController < ApplicationController
  def index
    @complaints = Complaint.all
  end

  def new
    @complaint = Complaint.new
  end

  def create
    @complaint = Complaint.new( params[:complaint] )
    if ( @complaint.save )
      redirect_to complaints_path
    else
      render :new
    end
  end
end
