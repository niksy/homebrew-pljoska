cask "gitx-gitx" do
  arch = Hardware::CPU.intel? ? "x86_64" : "arm64"

  version "0.20"

  if Hardware::CPU.intel?
    sha256 "767cc46bb18428bef484e58079bc9c04ed1c8651e204c11c7dd78ae37f289db1"
  else
    sha256 "1173a59e0e0570432f4b2dd267ffd09c9edb9ccd0a418aae998509d3034754dd"
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
