cask "acsccid-smartcard-driver" do
  version "1.1.8.3"
  sha256 "ccb98f3754072ede7490ba74f5379af4b95015c9306962ccaff0dad5b1dca9a1"

  url "https://github.com/niksy/homebrew-pljoska/raw/master/downloads/acsccid_installer-#{version}.dmg"
  name "ACS Unified Installer"
  desc "PC/SC driver for smart card reader"
  homepage "https://acsccid.sourceforge.io/"

  pkg "acsccid_installer.pkg"

  uninstall pkgutil: "com.acs.acsccid"
end
