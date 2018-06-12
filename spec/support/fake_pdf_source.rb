require 'sinatra/base'

class FakePdfSource < Sinatra::Base
  get '/valid.pdf' do
    file_path = File.join(
      Rails.root,
      'spec',
      'fixtures',
      'code_examples.pdf'
    )

    valid_file = File.open(file_path)

    send_file valid_file, disposition: 'attachment', status: 200
  end
end
