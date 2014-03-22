require 'formula'

class Entizeta < Formula
  homepage 'https://github.com/niksy/entizeta'
  url 'https://github.com/niksy/entizeta/archive/0.1.0.tar.gz'
  sha1 'f869c03443d1c3254fb4a12f8afa6a1e4b96832e'

  def install
    bin.install 'entizeta.sh' => 'entizeta'
  end
end
