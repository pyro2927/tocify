require "tocify/version"

module Tocify
  def self.filter_args(args)
    # see if we should inject this ToC back into the file
    if args.include?("--inject") || args.include?("-i")
      inject = true
      args.delete("--inject")
      args.delete("-i")
    else
      inject = false
    end
    
    # pass in our file name if we have it
    if args.length > 0
      Tocify.run(args[0], inject)
    else
      Tocify.run(nil, inject)
    end
  end
  def self.run(file_name = nil, inject = false)
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
    toc = Tocify.generate(file_name)
    if inject
      Tocify.insert(toc, file_name)
    end
    toc
  end

  def self.generate(file_name)
    toc = Array.new
    toc << "## Table of Contents"

    File.open(file_name).each do |line|
      if line.start_with?("##") && line.start_with?(toc[0]) == false
        # count number of lines, figure out how many leading paces we need
        # two spaces for each hash after the second
        spaces = " " * (line.split(" ").first.count("#") - 2) * 4
        title = line.split(" ")
        title.shift
        # links are the title, downcased, and spaces replaced with hyphens
        # also make sure to remove non-alphanumeric characters
        link = title.map {|w| w.downcase } .join("-").delete('^a-zA-Z0-9\-')
        toc << "#{spaces}* [#{title.join(" ")}](##{link})"
      end
    end
    toc.join("\n")
  end

  def self.insert(toc, file_name)
    content = File.read(file_name)
    content.sub!(/(\n## Table of Contents.+?|)\n##/im, "\n" + toc + "\n\n##")
    File.write(file_name, content)
  end
end
