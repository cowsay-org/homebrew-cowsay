class CowsayOrg < Formula
  desc "Configurable talking characters in ASCII art, cowsay-org's fork"
  homepage "https://cowsay.diamonds"
  url "https://github.com/cowsay-org/cowsay/archive/v3.8.2.tar.gz"
  sha256 "f6eeee3c2d4f61bc9b68b0717181f9b0affcfd174b06cd63a5b891b5f9e2383c"
  head "https://github.com/cowsay-org/cowsay.git"

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
