class QuerykitCli < Formula
  homepage "http://querykit.org/"
  head "https://github.com/kylef/querykit-cli"
  url "https://github.com/kylef/querykit-cli/releases/download/0.1.2/querykit-cli.tar.gz"
  sha256 "a4b6198cca190bc3dc5adb9d9de9326c4e29fbf609036118a24de0e5a3c3255e"

  def install
    system "make" if build.head?
    system "make", "DESTDIR=#{prefix}", "install"
  end
end

