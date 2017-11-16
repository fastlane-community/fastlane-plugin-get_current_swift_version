module Fastlane
  module Actions
    class GetCurrentSwiftVersionAction < Action
      def self.run(params)
        `xcrun swift -version | awk '{ printf $4 }'`
      end

      def self.description
        "Get current Xcode toolchain's Swift version."
      end

      def self.details
        [
          "Useful if you're using multiple Xcode versions on your Mac, and",
          "want to cache pre-built frameworks for each Swift versions. This",
          "prevent rebuilding frameworks everytime you switched Xcode version."
        ].join("\n")
      end

      def self.authors
        ["Thi"]
      end

      def self.return_value
        ["Returns currently being selected Xcode toolchain's Swift version"]
      end

      def self.is_supported?(platform)
        [:ios, :mac].include?(platform)
      end
    end
  end
end
