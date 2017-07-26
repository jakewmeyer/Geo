class Geo < Formula
  desc "Bash utility for network and ip geodata, with clean output for piping"
  homepage "https://github.com/jakewmeyer/Geo"
  url "https://github.com/jakewmeyer/Geo/archive/v1.2.0.tar.gz"
  sha256 "6a4f5fe6cfa527af4bacaba3e62d44d4a8dac5beaa74d2f5dc5e8a38b70acb09"
  
  def install
    bin.install "geo"
  end
  
  test do
    system "#{bin}/geo", "-w"
  end
end
