require 'formula'

class Setfileicon < Formula
  homepage 'http://www.cocoabuilder.com/archive/xcode/250445-custom-icon-for-bundle.html#250519'
  url 'http://maxao.free.fr/telechargements/setfileicon.gz'
  version '0.1.0'
  sha1 '09ee8a0c96067d0cff04816ed10ffd2a9adb0dab'

  def install
    bin.install 'setfileicon'
  end
end
