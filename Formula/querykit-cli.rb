class QuerykitCli < Formula
  homepage "http://querykit.org/"
  head "https://github.com/kylef/querykit-cli"
  url "https://github.com/kylef/querykit-cli/releases/download/0.2.0/querykit-cli.tar.gz"
  sha256 "2b1aaa792091799a9c163a17519aad3c904f35720a655cea7baa1f9c430a5949"

  def install
    system "make" if build.head?
    system "make", "DESTDIR=#{prefix}", "install"
  end
end

