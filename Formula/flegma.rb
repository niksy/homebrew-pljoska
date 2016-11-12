require 'formula'

class Flegma < Formula
  homepage 'https://github.com/niksy/flegma'
  url 'https://github.com/niksy/flegma/archive/0.1.0.tar.gz'
  sha256 '113b093deb4e79474f05c19fd539fa2fc9aee1a216a6a55e5e7e75294472d376'

  depends_on 'speedtest_cli' => :recommended

  def install
    bin.install 'flegma.sh' => 'flegma'
  end
end
