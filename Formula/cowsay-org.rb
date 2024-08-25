class CowsayOrg < Formula
  desc "Configurable talking characters in ASCII art, cowsay-org's fork"
  homepage "https://cowsay.diamonds"
  url "https://github.com/cowsay-org/cowsay/archive/v3.8.3.tar.gz"
  sha256 "3bcb1f644a85792bc2ee8601971f16f8f1e7ca0013d6062cf35b4fd6d8fa29ea"
  head "https://github.com/cowsay-org/cowsay.git", branch: "main"
  license "GPL-3.0"

  conflicts_with "cowsay", :because => "cowsay-org is a fork of cowsay"

  def install
    system "make", "install", "prefix=#{prefix}"
  end

  test do
    output = shell_output("#{bin}/cowsay moo")
    assert_match "moo", output  # bubble
    assert_match "^__^", output # cow
  end
end
