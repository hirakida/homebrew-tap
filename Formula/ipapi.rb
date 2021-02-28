class Ipapi < Formula
  desc "ip-api CLI"
  homepage "https://github.com/hirakida/ipapi-cli"
  url "https://github.com/hirakida/ipapi-cli/archive/v0.1.0.tar.gz"
  sha256 "9c33a04b4ac2bcaba16341de0750a2b98b2e7dc7b1eae0562386cbea489d191d"
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
