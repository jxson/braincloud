class Braincloud
  module Views
    class Index < Layout
      def content
        @content || "Welcome! Mustache lives."
      end
    end
  end
end