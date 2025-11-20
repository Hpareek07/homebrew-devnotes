class Devnotes < Formula
  desc "Developer-focused note-taking app"
  homepage "https://github.com/Hpareek07/devnotes"
  version "1.0.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Hpareek07/homebrew-devnotes/releases/download/v1.0.0/devnotes-darwin_v1.0.0-arm64.tar.gz"
      sha256 "21b984ee934afb8271b8547724cd913350c2cd34903110e92f7e59f56dba737f"
    else
      url "https://github.com/Hpareek07/homebrew-devnotes/releases/download/v1.0.0/devnotes-darwin_v1.0.0-amd64.tar.gz"
      sha256 "a05168be51efceec6b184e5a7c7cf4fc282d7231e80056ec3636e65a072234d8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Hpareek07/homebrew-devnotes/releases/download/v1.0.0/devnotes-linux_v1.0.0-arm64.tar.gz"
      sha256 "7093f6643322a8c00a740e968163f5b3fcf03e212bc97fc9af38a94038d690d9"
    else
      url "https://github.com/Hpareek07/homebrew-devnotes/releases/download/v1.0.0/devnotes-linux_v1.0.0-amd64.tar.gz"
      sha256 "aa8e02206586fdedbabf2260a504267416c2c59ba2ac7aded761d8b5fa9de421"
    end
  end

  def install
  if OS.mac?
    if Hardware::CPU.arm?
      bin.install "devnotes-darwin-arm64" => "devnotes"
    else
      bin.install "devnotes-darwin-amd64" => "devnotes"
    end
  else
    if Hardware::CPU.arm?
      bin.install "devnotes-linux-arm64" => "devnotes"
    else
      bin.install "devnotes-linux-amd64" => "devnotes"
    end
  end
end

  def post_install
    (var/"devnotes").mkpath
  end

  test do
    output = shell_output("#{bin}/devnotes --help")
    assert_match "devnotes", output.downcase
  end
end
