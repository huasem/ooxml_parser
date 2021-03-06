module OoxmlParser
  # Class for parsing `w:CommentRangeStart` tags
  class CommentRangeStart < OOXMLDocumentObject
    # @return [Integer] id of bookmark
    attr_reader :id

    # Parse CommentRangeStart object
    # @param node [Nokogiri::XML:Element] node to parse
    # @return [BookmarkStart] result of parsing
    def parse(node)
      node.attributes.each do |key, value|
        case key
        when 'id'
          @id = value.value.to_i
        end
      end
      self
    end

    def comment
      root_object.comments.detect { |comment| comment.id == id }
    end
  end
end
