require "rails_helper"

describe PDFParser do
  describe ".text" do
    it "collects the text from all pages in the pdf document" do
      file = double(:pdf)
      allow(OpenURI).to receive(:open_uri).and_return(file)
      stub_reader(incoming_pdf: file, pages: ["Hello", "World"])

      text = PDFParser.new("http://example.com/doc.pdf").text

      expect(text).to eq "Hello\nWorld"
    end

    def stub_reader(incoming_pdf:, pages:)
      mock_pages = pages.map { |page| double(:page, text: page) }
      mock_reader = double(PDF::Reader, pages: mock_pages)
      allow(PDF::Reader).to receive(:new).with(incoming_pdf)
        .and_return(mock_reader)
    end
  end
end
