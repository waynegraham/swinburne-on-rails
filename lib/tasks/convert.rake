# encoding: UTF-8
# Tasks for converting TEI XML

require 'curb'
require 'nokogiri'

namespace :convert do
  desc 'Transform openings'
  task :openings => :environment do
    puts "Reading file"

    path = File.expand_path('lib/assets')
    xml_file = path + '/swinburne.xml'
    xsl_file = path + '/openings.xsl'

    doc = Nokogiri::XML(File.read(xml_file))
    puts "Converting Openings"
    xsl = Nokogiri::XSLT(File.read(xsl_file))

    openings = xsl.transform(doc)

    puts "Generating application openings..."

    openings.xpath('div[@class = "opening"]').each do |opening|
      verso = opening.xpath('child::div[@class="verso"]')
      recto = opening.xpath('child::div[@class="recto"]')
      #running_title = opening.xpath('h1').text
      verso_page_number = verso.xpath('span[@class="page_number"]').text
      recto_page_number = recto.xpath('span[@class="page_number"]').text

      puts "Converting pages #{verso_page_number} and #{verso_page_number}"
      Opening.create(
        verso: verso,
        recto: recto,
        verso_page_number: verso_page_number,
        recto_page_number: recto_page_number
      )

    end
  end
end

namespace :remote_file do

  desc 'Grab the latest TEI edition from github'
  task :fetch do

    puts "Downloading latest version of the Swinburn edition from Github (master branch)"
    puts "This will take a second..."

    uri = 'https://raw.github.com/nowviskie/Swinburne/master/xml/base.xml'

    curl_response = Curl::Easy.http_get(uri) do |c|
      c.on_complete do |curl_response|
        encoding = 'UTF-8'
        encoding = $1 if curl_response.header_str =~ /charset=([-a-z0-9]+)/i
        encoding = $1 if curl_response.body_str =~ %r{<meta[^>]+content=[^>]*charset=([-a-z0-9]+)[^>]*>}mi
        curl_response.body_str.force_encoding(encoding)
      end
    end

    body = curl_response.body_str

    puts "Writing file to lib/assets/swinburne.xml..."
    path = File.expand_path('./lib/assets')

    File.open(path + '/swinburne.xml', 'w') { |file| file.write(body) }

  end

end

