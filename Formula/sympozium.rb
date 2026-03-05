class Sympozium < Formula
  desc "Kubernetes-native AI agent orchestration platform CLI"
  homepage "https://github.com/AlexsJones/sympozium"
  version "0.0.93"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/AlexsJones/sympozium/releases/download/v#{version}/sympozium-darwin-arm64.tar.gz"
      sha256 "43d221d6e7319c80a792a2910bb7d4df265d64fd7b62daf2f953b342e7286b99"
    else
      url "https://github.com/AlexsJones/sympozium/releases/download/v#{version}/sympozium-darwin-amd64.tar.gz"
      sha256 "2c99e3c15c0786d1ed9c61d51b445fca29caf5927ee827ccbd8d819d89f8a5ed"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/AlexsJones/sympozium/releases/download/v#{version}/sympozium-linux-arm64.tar.gz"
      sha256 "161f9a927fdf4c750616d82ae31f88ec4e65f66c6471785904c1c196348ffe40"
    else
      url "https://github.com/AlexsJones/sympozium/releases/download/v#{version}/sympozium-linux-amd64.tar.gz"
      sha256 "aeb787e981cc5da5b6fc4df5e960f8d951309690a256ead1432e6f8116d988c4"
    end
  end

  def install
    bin.install "sympozium"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sympozium version")
  end
end
