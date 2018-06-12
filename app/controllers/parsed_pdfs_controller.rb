class ParsedPdfsController < ApplicationController
  def create
    parser = PDFParser.new(pdf_url)

    render plain: parser.text
  end

  private

  def pdf_url
    permitted_params["url"]
  end

  def permitted_params
    params.require(:parsed_pdf).permit(:url)
  end
end
