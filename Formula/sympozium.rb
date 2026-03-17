class Sympozium < Formula
  desc "Kubernetes-native AI agent orchestration platform CLI"
  homepage "https://github.com/AlexsJones/sympozium"
  version "0.2.4"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/AlexsJones/sympozium/releases/download/v#{version}/sympozium-darwin-arm64.tar.gz"
      sha256 "c5b271a8897d151cdc7216573394e4979b6551c4f3edbcbbe10125ed11449a5d"
    else
      url "https://github.com/AlexsJones/sympozium/releases/download/v#{version}/sympozium-darwin-amd64.tar.gz"
      sha256 "9589c27fdad5ad2c08a5bd21998e58d0754dc61dffa403981f19eebb9e64ca22"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/AlexsJones/sympozium/releases/download/v#{version}/sympozium-linux-arm64.tar.gz"
      sha256 "64ba0b793166a07e0a0db8e9c5d36e43e68ae1df03879e55df217877742199d6"
    else
      url "https://github.com/AlexsJones/sympozium/releases/download/v#{version}/sympozium-linux-amd64.tar.gz"
      sha256 "29f1d26c7478dbc77071937bed13a14b1e019633847bc182f9a398e1e6f2913d"
    end
  end

  def install
    bin.install "sympozium"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sympozium version")
  end
end
