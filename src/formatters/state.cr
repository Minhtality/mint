module Mint
  class Formatter
    def format(node : Ast::State) : String
      default =
        format node.default

      name =
        format node.name

      type =
        format node.type

      comment =
        node.comment.try { |item| "#{format item}\n" }

      "#{comment}state #{name} : #{type} = #{default}"
    end
  end
end
