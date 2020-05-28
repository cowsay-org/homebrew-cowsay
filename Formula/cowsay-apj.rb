class CowsayApj < Formula
  desc "Configurable talking characters in ASCII art"
  homepage "https://cowsay.diamonds"
  url "https://github.com/cowsay-org/cowsay/archive/v3.5.0.tar.gz"
  sha256 "56defb293df7629883826aac9fdfb888aefb650f98b705c7ec5d774e0b15cee1"
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
