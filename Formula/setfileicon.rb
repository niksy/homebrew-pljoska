require 'formula'

class Setfileicon < Formula
  homepage 'http://www.cocoabuilder.com/archive/xcode/250445-custom-icon-for-bundle.html#250519'
  url 'http://maxao.free.fr/telechargements/setfileicon.gz'
  version '0.1.0'
  sha256 '28629b29c29d847840cbb403f64ff591b5c8f14907477194fb5aee0aa092d815'

  def install
    bin.install 'setfileicon'
  end
end
