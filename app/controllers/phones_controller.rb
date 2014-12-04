class PhonesController < ApplicationController
    def show
    @phone = Phone.find(params[:id])
    send_data @phone.data, :filename => @phone.filename, :type => @phone.content_type
  end

    def create
    return if params[:phone].blank?

    @phone = Phone.new
    @phone.uploaded_file = params[:phone]

    if @phone.save
        flash[:notice] = "Thank you for your submission..."
        redirect_to :action => "index"
    else
        flash[:error] = "There was a problem submitting your attachment."
        render :action => "new"
    end
  end

  def new
  end

  def index
    @abc = Phone.all
  end

end
