class Pokerd < Formula
  desc "A command line Texas Hold'em implementation"
  homepage "https://github.com/filiph/pokerd"
  url "https://github.com/filiph/pokerd/archive/1.0.10.tar.gz"
  sha256 "9919045ed2fb01c435cbe9215cbaa63c943e5e92ca52800aee0c57c42cdd22fe"
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
