cask 'rtunic' do
  version '1.0.17'
  sha256 :no_check

  url "https://lmp-adapter.com/wp-content/uploads/2018/10/Ethernet-Driver.zip"
  name 'Realtek USB hub drivers'
  homepage 'https://lmp-adapter.com/support/'

  depends_on macos: '<= :catalina'

  pkg "Ethernet Driver/RTUNICv#{version}.pkg"

  uninstall pkgutil: [
                       'com.realtek.usbeth.*',
                       'com.realtek.usbethcomposite.*',
                     ],
            kext:    [
                       'com.realtek.driver.AppleRTL815XComposite',
                       'com.realtek.driver.AppleRTL815XEthernet',
                     ],
            script:  [
                       executable: "#{staged_path}/Ethernet Driver/uninstall/uninstall.command",
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
