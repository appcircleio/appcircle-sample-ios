require 'net/http'

def download_file(url, destination)
  uri = URI(url)
  response = Net::HTTP.get_response(uri)

  if response.is_a?(Net::HTTPSuccess)
    File.open(destination, "wb") do |file|
      file.write(response.body)
    end
    puts "File downloaded successfully: #{destination}"
  else
    puts "File can not download: #{url}"
  end
end

output_dir = ENV['AC_OUTPUT_DIR']
url = "https://raw.githubusercontent.com/opencv/opencv/master/README.md"

download_file(url, "#{output_dir}/exampleFile.md")
