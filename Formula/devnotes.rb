class Devnotes < Formula
  desc "Developer-focused note-taking app"
  homepage "https://github.com/Hpareek07/devnotes"
  version "1.1.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Hpareek07/homebrew-devnotes/releases/download/v1.1.3/devnotes-v1.1.3-darwin-arm64.tar.gz"
      sha256 "a01ce34d110d915bc43b05ef7fa4e9af0e7cf9d0b37b4f49e805833c1a241245"
    else
      url "https://github.com/Hpareek07/homebrew-devnotes/releases/download/v1.1.3/devnotes-v1.1.3-darwin-amd64.tar.gz"
      sha256 "41e3787a98eb2d61aaec1aee746775bf6f17dda3f1cc83575b6d8df6d3841ab3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Hpareek07/homebrew-devnotes/releases/download/v1.1.3/devnotes-v1.1.3-linux-arm64.tar.gz"
      sha256 "4cd0a841e7095a53a94cb13b0c3eed002a3fd336e165232c01a3429f9cd19e0b"
    else
      url "https://github.com/Hpareek07/homebrew-devnotes/releases/download/v1.1.3/devnotes-v1.1.3-linux-amd64.tar.gz"
      sha256 "55188bc6a675ee15ffb7d87604b808515bf9130bb11b663617924922feb5e39a"
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
