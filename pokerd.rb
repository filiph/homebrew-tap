class Pokerd < Formula
  desc "A command line Texas Hold'em implementation"
  homepage "https://github.com/filiph/pokerd"
  url "https://github.com/filiph/pokerd/archive/1.0.6.tar.gz"
  sha256 "2802e35945bf5052bd11bb11042ce3f683715d5f61c844945eb607a547e44207"
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
