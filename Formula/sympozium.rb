class Sympozium < Formula
  desc "Kubernetes-native AI agent orchestration platform CLI"
  homepage "https://github.com/sympozium-ai/sympozium"
  version "0.10.5"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sympozium-ai/sympozium/releases/download/v#{version}/sympozium-darwin-arm64.tar.gz"
      sha256 "c2e7d634e28d14e9102c92c52b7bbe2207ff2aaae86ac82fe468721dce2f0555"
    else
      url "https://github.com/sympozium-ai/sympozium/releases/download/v#{version}/sympozium-darwin-amd64.tar.gz"
      sha256 "2d47dfa78ee8468f521a8ff001baf8d07eab15d697f3995d5e760db9d9c97d16"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/sympozium-ai/sympozium/releases/download/v#{version}/sympozium-linux-arm64.tar.gz"
      sha256 "1e260122b2665ad2ffd8cf26cd02df4c5516dd149519ce967f770089e579ea8e"
    else
      url "https://github.com/sympozium-ai/sympozium/releases/download/v#{version}/sympozium-linux-amd64.tar.gz"
      sha256 "fa14220158aef48e1e2d09c467dfde7a8b3a9592ff404494efe5def3c2d43f23"
    end
  end

  def install
    bin.install "sympozium"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sympozium version")
  end
end
