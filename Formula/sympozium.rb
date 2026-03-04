class Sympozium < Formula
  desc "Kubernetes-native AI agent orchestration platform CLI"
  homepage "https://github.com/AlexsJones/sympozium"
  version "0.0.90"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/AlexsJones/sympozium/releases/download/v#{version}/sympozium-darwin-arm64.tar.gz"
      sha256 "0d26d12064b02637e77e15480b20f13e2c4d0986cddb4588066f3dc864e45b7e"
    else
      url "https://github.com/AlexsJones/sympozium/releases/download/v#{version}/sympozium-darwin-amd64.tar.gz"
      sha256 "8a42625026a27a1b82f5fc2356397877f8681dfb6b5f8df8d8746a6df83b5292"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/AlexsJones/sympozium/releases/download/v#{version}/sympozium-linux-arm64.tar.gz"
      sha256 "7408306db3e29fcc3344f80fa7f014a042eead21a53c0fc96efa9eb8da7a6c76"
    else
      url "https://github.com/AlexsJones/sympozium/releases/download/v#{version}/sympozium-linux-amd64.tar.gz"
      sha256 "7e3edd52ba1a1e95bd4d5b687e9f53ce99faa49ae596cb70faafc6547dbb3744"
    end
  end

  def install
    bin.install "sympozium"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sympozium version")
  end
end
