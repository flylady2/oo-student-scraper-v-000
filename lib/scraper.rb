require 'nokogiri'
require 'open-uri'
require 'pry'

class Scraper

  def self.scrape_index_page(index_url)
    doc = Nokogiri::HTML(open(index_url))
    students = {}
    student_data = doc.css(".roster-cards-container")


    student_names = student_data.css("h4.student-name").collect do |student|
      student.text
    end


    #doc.css("div.student-card").each do |student|
    #doc.css("a href").value
    #end

      #:name => student.css("h4.student-name").text,
    student_locations = student_data.css("p.student-location").collect do |student|
      student.text
    end
    binding.pry
    #doc.css("a href").value
    #end
    student_profiles = student_data.css("a").attribute("href")

      binding.pry




    #locations = doc.css("p.student-location").first.text
    #doc.css("div.student-card")
  end

  def self.scrape_profile_page(profile_url)

  end

end
