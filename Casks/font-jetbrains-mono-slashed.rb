cask "font-jetbrains-mono-slashed" do
  version "2.304"
  sha256 "ca05b59fd6ece9c697468c9e7b1e5558db517cb58d19d3776e88556a0f65259e"

  url "https://github.com/sharpjs/JetBrainsMonoSlashed/releases/download/v#{version}/JetBrainsMonoSlashed-#{version}.zip",
       verified: "github.com/sharpjs/JetBrainsMonoSlashed/"
  name "JetBrains Mono Slashed"
  desc "The JetBrains Mono font, with slashed zero made the default"
  homepage "https://github.com/sharpjs/JetBrainsMonoSlashed"

  # Documentation: https://docs.brew.sh/Brew-Livecheck
  livecheck do
    url "https://github.com/sharpjs/JetBrainsMonoSlashed"
    strategy :gitHub_latest
  end

  font "No-Ligatures/JetBrainsMonoSlashedNL-Bold.otf"
  font "No-Ligatures/JetBrainsMonoSlashedNL-BoldItalic.otf"
  font "No-Ligatures/JetBrainsMonoSlashedNL-ExtraBold.otf"
  font "No-Ligatures/JetBrainsMonoSlashedNL-ExtraBoldItalic.otf"
  font "No-Ligatures/JetBrainsMonoSlashedNL-ExtraLight.otf"
  font "No-Ligatures/JetBrainsMonoSlashedNL-ExtraLightItalic.otf"
  font "No-Ligatures/JetBrainsMonoSlashedNL-Italic.otf"
  font "No-Ligatures/JetBrainsMonoSlashedNL-Light.otf"
  font "No-Ligatures/JetBrainsMonoSlashedNL-LightItalic.otf"
  font "No-Ligatures/JetBrainsMonoSlashedNL-Medium.otf"
  font "No-Ligatures/JetBrainsMonoSlashedNL-MediumItalic.otf"
  font "No-Ligatures/JetBrainsMonoSlashedNL-Regular.otf"
  font "No-Ligatures/JetBrainsMonoSlashedNL-SemiBold.otf"
  font "No-Ligatures/JetBrainsMonoSlashedNL-SemiBoldItalic.otf"
  font "No-Ligatures/JetBrainsMonoSlashedNL-Thin.otf"
  font "No-Ligatures/JetBrainsMonoSlashedNL-ThinItalic.otf"
  font "Variable/JetBrainsMonoSlashed-Italic[wght].otf"
  font "Variable/JetBrainsMonoSlashed[wght].otf"

  # No zap stanza required
end
