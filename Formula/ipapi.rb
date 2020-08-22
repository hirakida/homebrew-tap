class Ipapi < Formula
  desc "ip-api CLI"
  homepage "https://github.com/hirakida/ip-api-cli"
  url "https://github.com/hirakida/ip-api-cli/archive/v0.1.0.tar.gz"
  sha256 "a64f23bdf4f756736d78939079a71d297b429585382ae7ce4d13f3c48fbbc803"
  license "MIT"

  depends_on "nim"

  def install
    system "nimble", "build", "-y"
    bin.install "bin/ipapi"
  end

  test do
    system "false"
  end
end
