class Sympozium < Formula
  desc "Kubernetes-native AI agent orchestration platform CLI"
  homepage "https://github.com/AlexsJones/sympozium"
  version "0.0.105"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/AlexsJones/sympozium/releases/download/v#{version}/sympozium-darwin-arm64.tar.gz"
      sha256 "5e9c0e1654f5cadb8139b452048f2c4b98a41b64d91d8714f2ad7a32b38a8db3"
    else
      url "https://github.com/AlexsJones/sympozium/releases/download/v#{version}/sympozium-darwin-amd64.tar.gz"
      sha256 "4f601142fb8bd559d890a3d4cabf6a5e4befa51dd59cfd27c25a75739ff5d4b0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/AlexsJones/sympozium/releases/download/v#{version}/sympozium-linux-arm64.tar.gz"
      sha256 "94eb64b1659f4a33d2d21edd1ffd9a7ae5bc5513cd5cbd1cb74fdca63c05b7c5"
    else
      url "https://github.com/AlexsJones/sympozium/releases/download/v#{version}/sympozium-linux-amd64.tar.gz"
      sha256 "531df598f77e7a6e2d2afc126c0d2f2c7be8d700e1eeddad50f06603ca38ecbf"
    end
  end

  def install
    bin.install "sympozium"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sympozium version")
  end
end
