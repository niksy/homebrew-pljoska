cask 'font-microsoft-cleartype-family' do

  version :latest
  sha256 :no_check
  url 'https://dl.dropboxusercontent.com/s/6gjkp0p42e5qxzy/MicrosoftClearTypeFontFamily.zip'
  homepage 'http://www.microsoft.com/typography/cleartypefonts.mspx'

  font 'Calibri Bold Italic.ttf'
  font 'Calibri Bold.ttf'
  font 'Calibri Italic.ttf'
  font 'Calibri.ttf'
  font 'Cambria Bold Italic.ttf'
  font 'Cambria Bold.ttf'
  font 'Cambria Italic.ttf'
  font 'Cambria.ttf'
  font 'Candara Bold Italic.ttf'
  font 'Candara Bold.ttf'
  font 'Candara Italic.ttf'
  font 'Candara.ttf'
  font 'Consolas Bold Italic.ttf'
  font 'Consolas Bold.ttf'
  font 'Consolas Italic.ttf'
  font 'Consolas.ttf'
  font 'Constantia Bold Italic.ttf'
  font 'Constantia Bold.ttf'
  font 'Constantia Italic.ttf'
  font 'Constantia.ttf'
  font 'Corbel Bold Italic.ttf'
  font 'Corbel Bold.ttf'
  font 'Corbel Italic.ttf'
  font 'Corbel.ttf'

  caveats <<~EOS
    Fonts downloaded as per http://www.wezm.net/technical/2010/08/howto-install-consolas-font-mac/.

    Contains modified Consolas typeface as per https://gist.github.com/evocateur/79238.
  EOS

end
