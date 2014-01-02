require 'formula'

class Flegma < Formula
  homepage 'https://github.com/niksy/flegma'
  url 'https://github.com/niksy/flegma/archive/0.1.0.tar.gz'
  sha1 '235b253eb923226ea98933c3a085c6b1998f7a8a'

  depends_on 'speedtest_cli' => :recommended

  def install
    bin.install 'flegma.sh' => 'flegma'
  end
end
