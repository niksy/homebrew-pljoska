cask 'rtunic' do
  version '1.0.20'
  sha256 :no_check

  url "https://github.com/niksy/homebrew-pljoska/raw/master/downloads/RTUNICv1.0.20_Update2.zip"
  name 'Realtek USB hub drivers'
  homepage 'https://www.realtek.com/en/component/zoo/category/network-interface-controllers-10-100-1000m-gigabit-ethernet-usb-3-0-software'

  depends_on macos: '<= :catalina'

  pkg "RTUNICv#{version}.pkg"

  uninstall pkgutil: [
                       'com.realtek.usbeth.*',
                       'com.realtek.usbethcomposite.*',
                     ],
            kext:    [
                       'com.realtek.driver.AppleRTL815XComposite',
                       'com.realtek.driver.AppleRTL815XEthernet',
                     ],
            script:  [
                       executable: "#{staged_path}/uninstall/uninstall.command",
                       sudo:       true,
                     ],
            delete:  [
                       '/Library/Extensions/AppleRTL815X*.kext',
                       '/System/Library/Extensions/IONetworkingFamily.kext/Contents/PlugIns/AppleRTL815X*.kext',
                     ]

  caveats do
    reboot
  end
end
