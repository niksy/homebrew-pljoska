require 'formula'

class Entizeta < Formula
  homepage 'https://github.com/niksy/entizeta'
  url 'https://github.com/niksy/entizeta/archive/0.1.0.tar.gz'
  sha256 '2a4783fda247096ecf026c62be4ed6711952310bbbeb66acd346f9144592999e'

  def install
    bin.install 'entizeta.sh' => 'entizeta'
  end
end
