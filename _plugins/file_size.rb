module Jekyll
  module AssetFilter
    def file_size(input)
      # If the path starts with a / then prepend a . character, so the file may be properly referenced.
      filename = input.start_with?("/") ? ".#{input}" : input
      "#{File.size?(filename)}"
    end
  end
end

Liquid::Template.register_filter(Jekyll::AssetFilter)
