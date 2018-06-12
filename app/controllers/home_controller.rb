class HomeController < ApplicationController
  def show
    @pdf_file = ParsedPdf.new
  end
end
