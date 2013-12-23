class Smoothmouse < Cask
  url 'http://smoothmouse.com/download/latest/'
  homepage 'http://smoothmouse.com/'
  version 'latest'
  no_checksum
  install 'SmoothMouse.pkg'
  uninstall :script => '/Library/PreferencePanes/SmoothMouse.prefPane/Contents/Resources/uninstall.sh'
end