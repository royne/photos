class ReportsController < ApplicationController
  def index
    @photos = Photo.all

    respond_to do |format|
      format.html
      format.pdf  do
        render :pdf => "reporte",
               :template => "reports/index.pdf.erb",
               :layout => "pdf.html.erb"
      end
    end
  end
end
