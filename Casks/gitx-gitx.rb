cask "gitx-gitx" do
  arch = Hardware::CPU.intel? ? "x86_64" : "arm64"

  version "0.23"

  if Hardware::CPU.intel?
    sha256 "ba5edc82c260fbdf4b6e74c2e3a455b270ebde6d5c94a9140f212bec1cab9507"
  else
    sha256 "6b350adf5d38826d834a25e0cdacb3f3bc38670cbd928a59bd7982b1d528ea0f"
  end

  url "https://github.com/gitx/gitx/releases/download/#{version}/GitX-#{arch}.dmg",
      verified: "github.com/gitx/gitx"

  name "GitX-GitX"
  desc "Native graphical client for the git version control system"
  homepage "https://gitx.github.io/"

  livecheck do
    url "https://github.com/gitx/gitx/releases/latest"

    strategy :page_match do |page|
      match = page.match(%r{href=.*?/download/(\d+(?:\.\d+)*)/GitX-.*\.dmg}i)
      next if match.blank?

      "#{match[1]}"
    end
  end

  conflicts_with cask: ["gitx", "rowanj-gitx"]

  app "GitX.app"
  binary "#{appdir}/GitX.app/Contents/Resources/gitx"
end
