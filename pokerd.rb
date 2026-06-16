class Pokerd < Formula
  desc "A command line Texas Hold'em implementation"
  homepage "https://github.com/filiph/pokerd"
  url "https://github.com/filiph/pokerd/archive/v1.0.13.tar.gz"
  sha256 "f09d7fa278e24a38bc2c176abb4e27c2779acb4a8de5e3d6dc3235f0fa394c03"
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
