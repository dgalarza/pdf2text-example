class HomeController < ActionController::Base
  def show
    @pdf_file = PdfFile.new
  end
end
