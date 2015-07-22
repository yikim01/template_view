class NewslettersController < ApplicationController

  def index
    @newsletter =  Newsletter.all
  end

  def create
    @newsletter = Newsletter.new(newsletter_params)
    if @newsletter.save
      flash[:success] = "Your e-mail was saved"
    else
      flash[:alert] = "Your e-mail was not saved"
    end
  end

  def new
    @newsletter = Newsletter.new
  end

  def show
  end

  private
    def newsletter_params
      params.require(:newsletter).permit(:email)
    end
end
