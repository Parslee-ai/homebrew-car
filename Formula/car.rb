class Car < Formula
  desc "Common Agent Runtime — deterministic execution layer for AI agents"
  homepage "https://github.com/Parslee-ai/car-releases"
  version "0.3.0"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/Parslee-ai/car-releases/releases/download/v0.3.0/car-darwin-arm64.tar.gz"
      sha256 "19b2f9c193e964387fa74eb042dd5c681996f063d5e03a6570f3e232abb5839a"
    end
    on_intel do
      url "https://github.com/Parslee-ai/car-releases/releases/download/v0.3.0/car-darwin-x64.tar.gz"
      sha256 "814304dfeadc41346649dc0bde020d7ab6e0446c659f79001f8c27de1624213b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Parslee-ai/car-releases/releases/download/v0.3.0/car-linux-arm64-gnu.tar.gz"
      sha256 "5f4104de236101cec17af0097f68051f0094bc79ecc5262d0deae32d476823f8"
    end
    on_intel do
      url "https://github.com/Parslee-ai/car-releases/releases/download/v0.3.0/car-linux-x64-gnu.tar.gz"
      sha256 "4a3113adca3273720b80b341ca5c392778f716c89de7a205e36c1e1c1274b592"
    end
  end

  def install
    bin.install "car", "car-server", "car-memgine-eval"
    # The Node.js .node module is intentionally not installed — Node users
    # should install via `npm install car-runtime` instead.
  end

  test do
    assert_match "car", shell_output("#{bin}/car --help")
  end
end
