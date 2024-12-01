class CowsayOrg < Formula
  desc "Configurable talking characters in ASCII art, cowsay-org's fork"
  homepage "https://cowsay.diamonds"
  url "https://github.com/cowsay-org/cowsay/archive/v3.8.4.tar.gz"
  sha256 "c15bc10712835d3a9bcda780dc9453362567bf48d1185905dc7ef2334d79aadd"
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
