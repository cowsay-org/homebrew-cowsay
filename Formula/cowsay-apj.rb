class CowsayApj < Formula
  desc "Configurable talking characters in ASCII art"
  homepage "https://cowsay.diamonds"
  url "https://github.com/cowsay-org/cowsay/archive/v3.8.1.tar.gz"
  sha256 "77c0f2e55c783d878f7227f12c142686bcf8ba54c2d3f082b406d42f428090b3"
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
