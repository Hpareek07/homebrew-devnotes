class Devnotes < Formula
  desc "Developer-focused note-taking app"
  homepage "https://github.com/Hpareek07/devnotes"
  version "1.0.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Hpareek07/homebrew-devnotes/releases/download/v1.1.0/devnotes-v1.1.0-darwin-arm64.tar.gz"
      sha256 "235128c2b6ef4a805fbc54c104db0c3bf8f066cf23ae528ca886c0832594dea3"
    else
      url "https://github.com/Hpareek07/homebrew-devnotes/releases/download/v1.1.0/devnotes-v1.1.0-darwin-amd64.tar.gz"
      sha256 "a7bc278a61a887cfaeb04545f1462b719bd2d0628fbaa01da0866642e1e0c749"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Hpareek07/homebrew-devnotes/releases/download/v1.1.0/devnotes-v1.1.0-linux-arm64.tar.gz"
      sha256 "e413576868c10991ee4f68ac7e22479249c7d4dad26b808163933eb859d2bbc0"
    else
      url "https://github.com/Hpareek07/homebrew-devnotes/releases/download/v1.1.0/devnotes-v1.1.0-linux-amd64.tar.gz"
      sha256 "8dabf4c7a33229fd2e8bc7a54063b2430c9f165f4298bf84a48d977e9a2b6ec4"
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
