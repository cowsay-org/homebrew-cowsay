class CowsayFiles < Formula
  desc "A collection of additional/alternative cowsay files"
  homepage "https://github.com/paulkaefer/cowsay-files"
  sha256 "af13a93f1559ea435403cf11eaa6c46be5bf03ac165a4acb471c66a4976167e0"
  head "https://github.com/paulkaefer/cowsay-files.git", branch: "main"

  def install
    system "make", "install", "prefix=#{prefix}"
  end

  test do
    true
  end
end
