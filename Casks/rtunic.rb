cask 'rtunic' do
  version '1.0.20'
  sha256 :no_check

  url "https://realtekcdn.akamaized.net/rtdrivers/cn/nic1/RTUNICv1.0.20_Update2.zip?__token__=exp=1~acl=/rtdrivers/cn/nic1/RTUNICv1.0.20_Update2.zip~hmac=c8b02123a9ce15e912fb79b1f4b75ac81e438b94a9101ff4184f0a7a57b7e1e4"
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
