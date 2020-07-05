module Jekyll
  module ParagraphsFilter
    def first_paragraph(input)
      input.each_line.drop_while{|l| l.strip.empty?}.take_while{|l| !l.strip.empty?}.to_a.join("\n")
    end
  end
end

Liquid::Template.register_filter(Jekyll::ParagraphsFilter)
