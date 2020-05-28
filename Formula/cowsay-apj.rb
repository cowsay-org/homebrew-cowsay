class CowsayApj < Formula
  desc "Configurable talking characters in ASCII art"
  homepage "https://cowsay.diamonds"
  url "https://github.com/cowsay-org/cowsay/archive/v3.6.0.tar.gz"
  sha256 "be92f1778b2481944ded8d13f0b5f96315ca49ab087246f9cdf8dbc70a112fae"
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
