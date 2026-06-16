class Pokerd < Formula
  desc "A command line Texas Hold'em implementation"
  homepage "https://github.com/filiph/pokerd"
  url "https://github.com/filiph/pokerd/archive/1.0.8.tar.gz"
  sha256 "fe73d5e570a5714095873791f08266719d9ee0d90fe29ef9d3227a6da9552f83"
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
