class CowsayApj < Formula
  desc "Configurable talking characters in ASCII art"
  homepage "https://cowsay.diamonds"
  url "https://github.com/cowsay-org/cowsay/archive/v3.04.01.tar.gz"
  sha256 "321dbe731a89cc9df441d2f0de22a506615d3ed7e2ed64b0b72acebac91de8a4"

  conflicts_with "cowsay", :because => "cowsay-apj is a fork of cowsay"

  def install
    system "/bin/sh", "install.sh", prefix
    mv prefix/"man", share
  end

  test do
    output = shell_output("#{bin}/cowsay moo")
    assert_match "moo", output  # bubble
    assert_match "^__^", output # cow
  end
end
