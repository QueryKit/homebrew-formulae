class QuerykitCli < Formula
  homepage "http://querykit.org/"
  head "https://github.com/kylef/querykit-cli"
  url "https://github.com/kylef/querykit-cli/releases/download/0.1.3/querykit-cli.tar.gz"
  sha256 "8f0b2d55eba60f10f4c075009b81cd082cbd254e0d6726614bae1be5359d07d8"

  def install
    system "make" if build.head?
    system "make", "DESTDIR=#{prefix}", "install"
  end
end

