cask 'mpv' do
  version '0.18.1'
  sha256 'c7ca06c7c6d72cf639811664918e37c65b2e4fdf649f6826ab19682be40dc083'

  # laboratory.stolendata.net was verified as official when first introduced to the cask
  url "https://laboratory.stolendata.net/~djinn/mpv_osx/mpv-#{version}.tar.gz"
  name 'mpv'
  homepage 'https://mpv.io/'
  license :gpl

  app 'mpv.app'
  binary 'mpv.app/Contents/MacOS/mpv'

  # Symlink fonts.conf to user dir so mpv doesn't show errors while used as CLI app.
  # Original discussion: https://github.com/mpv-player/mpv/issues/1391
  postflight do
    system '/bin/ln', '-nsf', '--', staged_path.join('mpv.app/Contents/Resources/fonts.conf'), File.expand_path('~/.config/mpv/fonts.conf')
  end

  zap delete: [
                '~/.mpv/channels.conf',
                '~/.mpv/config',
                '~/.mpv/input.conf',
                '~/.mpv/fonts.conf',
                '~/.config/mpv/channels.conf',
                '~/.config/mpv/mpv.conf',
                '~/.config/mpv/input.conf',
                '~/.config/mpv/fonts.conf',
              ],
      rmdir:  [
                '~/.mpv',
                '~/.config/mpv',
              ]

  caveats do
    files_in_usr_local
  end
end
