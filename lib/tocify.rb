require "tocify/version"

module Tocify
  # Your code goes here...
  def self.generate(file_name = nil)
    # sanity checks
    if file_name.nil?
      if File.exist?('README.md')
        file_name = 'README.md'
      else
        puts "You must provide a file name"
        return
      end
    elsif File.exist?(file_name) == false
      puts "The file '#{file_name}' doesn't exist"
      return
    end

    toc = Array.new
    toc << "## Table of Contents"

    File.open(file_name).each do |line|
      if line.start_with? "##"
        # count number of lines, figure out how many leading paces we need
        # two spaces for each hash after the second
        spaces = " " * (line.split(" ").first.count("#") - 2) * 4
        title = line.split(" ")
        title.shift
        # links are the title, downcased, and spaces replaced with hyphens
        link = title.map {|w| w.downcase } .join("-")
        toc << "#{spaces}* [#{title.join(" ")}](##{link})"
      end
    end
    toc.join("\n")
  end
end
