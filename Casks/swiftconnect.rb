cask "swiftconnect" do

  version "0.3"

  sha256 "8601dfc9b52434dd7f373103b678d85d68c93ed53da9f7902bfdee165472429f"

  url "https://github.com/wenyuzhao/SwiftConnect/releases/download/v#{version}/SwiftConnect.app.zip",
      verified: "github.com/wenyuzhao/SwiftConnect"

  name "SwiftConnect"
  desc "An openconnect GUI client for macOS"
  homepage "https://github.com/wenyuzhao/SwiftConnect"

  livecheck do
    url "https://github.com/wenyuzhao/SwiftConnect/releases/latest"

    strategy :page_match do |page|
      match = page.match(%r{href=.*?/download/(\d+(?:\.\d+)*)/SwiftConnect-.*\.zip}i)
      next if match.blank?

      "#{match[1]}"
    end
  end

  app "SwiftConnect.app"
end
