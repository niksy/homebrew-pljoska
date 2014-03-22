class FontMicrosoftCleartypeFamily < Cask
  url 'https://dl.dropboxusercontent.com/s/6gjkp0p42e5qxzy/MicrosoftClearTypeFontFamily.zip'
  homepage 'http://www.microsoft.com/typography/cleartypefonts.mspx'
  version 'latest'
  no_checksum
  font 'Calibri Bold Italic.ttf',
       'Calibri Bold.ttf',
       'Calibri Italic.ttf',
       'Calibri.ttf',
       'Cambria Bold Italic.ttf',
       'Cambria Bold.ttf',
       'Cambria Italic.ttf',
       'Cambria.ttf',
       'Candara Bold Italic.ttf',
       'Candara Bold.ttf',
       'Candara Italic.ttf',
       'Candara.ttf',
       'Consolas Bold Italic.ttf',
       'Consolas Bold.ttf',
       'Consolas Italic.ttf',
       'Consolas.ttf',
       'Constantia Bold Italic.ttf',
       'Constantia Bold.ttf',
       'Constantia Italic.ttf',
       'Constantia.ttf',
       'Corbel Bold Italic.ttf',
       'Corbel Bold.ttf',
       'Corbel Italic.ttf',
       'Corbel.ttf'
  caveats <<-EOS.undent
      Fonts downloaded as per http://www.wezm.net/technical/2010/08/howto-install-consolas-font-mac/.

      Contains modified Consolas typeface as per https://gist.github.com/evocateur/79238.
  EOS
end
