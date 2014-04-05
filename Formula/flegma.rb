require 'formula'

class Flegma < Formula
  homepage 'https://github.com/niksy/flegma'
  url 'https://github.com/niksy/flegma/archive/0.1.0.tar.gz'
  sha1 '7c9be8b2711efd51caeba880ebaa740e1d4f491a'

  depends_on 'speedtest_cli' => :recommended

  def install
    bin.install 'flegma.sh' => 'flegma'
  end
end
