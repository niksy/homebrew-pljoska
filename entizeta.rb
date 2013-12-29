require 'formula'

class Entizeta < Formula
  homepage 'https://github.com/niksy/entizeta'
  url 'https://github.com/niksy/entizeta/archive/f324303287478bdd847f0d6cd1392b2e7ecfe424.tar.gz'
  head 'https://github.com/niksy/entizeta.git'
  sha1 '595b13fd1fa4a9538b698a0546863151aca8433f'
  version '0.1'

  def install
    bin.install 'entizeta'
  end
end
