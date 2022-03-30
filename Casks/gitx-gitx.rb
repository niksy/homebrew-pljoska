cask "gitx-gitx" do
  arch = Hardware::CPU.intel? ? "x86_64" : "arm64"

  version "0.19"

  if Hardware::CPU.intel?
    sha256 "c22a03b93d00228eca78aafa2502987f50dd4ce89088660ede1ece81f95c0c68"
  else
    sha256 "7bba8efece314f07f3e2f70a1b4da34c93eba1ec14692d1d55003ab3742d96cf"
  end

  url "https://github.com/gitx/gitx/releases/download/#{version}/GitX.built.by.Xcode_13.2.1-#{arch}.dmg",
      verified: "github.com/gitx/gitx"

  name "GitX-GitX"
  desc "Native graphical client for the git version control system"
  homepage "https://gitx.github.io/"

  livecheck do
    url "https://github.com/gitx/gitx/releases/latest"

    strategy :page_match do |page|
      match = page.match(%r{href=.*?/download/(\d+(?:\.\d+)*)/GitX.built.by.Xcode_.*\.dmg}i)
      next if match.blank?

      "#{match[1]}"
    end
  end

  conflicts_with cask: ["gitx", "rowanj-gitx"]

  app "GitX.app"
  binary "#{appdir}/GitX.app/Contents/Resources/gitx"
end
