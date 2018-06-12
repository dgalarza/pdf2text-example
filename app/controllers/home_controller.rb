class HomeController < ActionController::Base
  def show
    @pdf_file = ParsedPdf.new
  end
end
