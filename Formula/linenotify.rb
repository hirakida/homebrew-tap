class Linenotify < Formula
  desc "LINE Notify CLI"
  homepage "https://github.com/hirakida/linenotify"
  url "https://github.com/hirakida/linenotify/archive/v0.1.0.tar.gz"
  sha256 "26c2c0949cfead82232e82803274a06d8a4f85f59db2d0a4bd9cde4b00bbc829"
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
