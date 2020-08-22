class Linenotify < Formula
  desc "LINE Notify CLI"
  homepage "https://github.com/hirakida/linenotify-cli"
  url "https://github.com/hirakida/linenotify-cli/archive/v0.1.0.tar.gz"
  sha256 "4deb3da15ca9e54f2c18144706142fa793041d3bf7f54da2aea436b5871cf21c"
  license "MIT"

  depends_on "nim"

  def install
    system "nimble", "build", "-y"
    bin.install "bin/linenotify"
  end

  test do
    system "false"
  end
end
