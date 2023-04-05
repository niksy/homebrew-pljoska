cask "openconnectui2" do

  version "1.766"

  sha256 "1b539ed2331dfb604eb7ff07e6539aa29a1946bc983b5d49d8320d5a90ee22ae"

  url "https://github.com/rrva/openconnectui2/releases/download/#{version}/OpenConnectUI2-#{version}.zip",
      verified: "github.com/rrva/openconnectui2"

  name "OpenConnectUI2"
  desc "A macOS menubar app to control Openconnect VPN"
  homepage "https://github.com/rrva/openconnectui2"

  livecheck do
    url "https://github.com/rrva/openconnectui2/releases/latest"

    strategy :page_match do |page|
      match = page.match(%r{href=.*?/download/(\d+(?:\.\d+)*)/OpenConnectUI2-.*\.zip}i)
      next if match.blank?

      "#{match[1]}"
    end
  end

  app "OpenConnectUI2.app"

  uninstall launchctl: "se.rrva.OpenConnectUI2.ToolX"

  zap trash: [
    "~/Library/Preferences/se.rrva.OpenConnectUI2"
  ]
end
