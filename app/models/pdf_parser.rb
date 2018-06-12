require "open-uri"

class PDFParser
  def initialize(url)
    @url = url
  end

  def text
    reader.pages.map(&:text).join("\n")
  end

  private

  attr_reader :url

  def reader
    @reader ||= PDF::Reader.new(io)
  end

  def io
    @io ||= open(url)
  end
end
