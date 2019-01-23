class ReportsController < ApplicationController
  def index
    @photos = Photo.includes(:user, :course).all
    @users_esp = User.includes(:photos).where(componet:"especifico")
    @users_trans = User.includes(:photos).where(componet:"transversal")
    respond_to do |format|
      format.html
      format.pdf  do
        render pdf: "reporte",
               template: "reports/index.pdf.erb",
               layout: "pdf.html.erb"
               # orientation: 'Landscape'
      end
    end
  end
end
