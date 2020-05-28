class CowsayApj < Formula
  desc "Configurable talking characters in ASCII art"
  homepage "https://cowsay.diamonds"
  url "https://github.com/cowsay-org/cowsay/archive/v3.6.1.tar.gz"
  sha256 "39b57f3de34f0d0c8ad7f6b75fcf334ce8f54700346930c418655711303dd397"
  head "https://github.com/cowsay-org/cowsay.git"

  conflicts_with "cowsay", :because => "cowsay-apj is a fork of cowsay"

  def install
    system "make", "install", "prefix=#{prefix}"
  end

  test do
    output = shell_output("#{bin}/cowsay moo")
    assert_match "moo", output  # bubble
    assert_match "^__^", output # cow
  end
end
