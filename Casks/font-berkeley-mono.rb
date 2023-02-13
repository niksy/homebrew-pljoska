cask 'font-berkeley-mono' do

  version :latest
  sha256 :no_check
  url "https://drive.google.com/uc?id=#{ENV['BERKELEY_MONO_DOWNLOAD_URL']}&export=download"
  homepage 'https://berkeleygraphics.com/typefaces/berkeley-mono/'

  font 'BerkeleyMonoTrial-Regular.ttf'

  caveats <<~EOS
    Trial version.

    Trial license details: https://berkeleygraphics.com/products/FX-050/#:~:text=Trial%20License%20Details
  EOS

end
