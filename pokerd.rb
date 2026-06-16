class Pokerd < Formula
  desc "A command line Texas Hold'em implementation"
  homepage "https://github.com/filiph/pokerd"
  url "https://github.com/filiph/pokerd/archive/1.0.5.tar.gz"
  sha256 "c1bb5ce36b3b5cea743f76fb379df9c08a1424ac00f17455927313c4d54fee42"
  license "MIT"

  depends_on "dart" => :build

  def install
    system "dart", "pub", "get"
    system "dart", "compile", "exe", "bin/pokerd.dart", "-o", "pokerd"
    bin.install "pokerd"
  end

  test do
    system "#{bin}/pokerd", "--help"
  end
end
