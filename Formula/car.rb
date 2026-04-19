class Car < Formula
  desc "Common Agent Runtime — deterministic execution layer for AI agents"
  homepage "https://github.com/Parslee-ai/car-releases"
  version "0.3.1"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/Parslee-ai/car-releases/releases/download/v0.3.1/car-darwin-arm64.tar.gz"
      sha256 "9a11d0318af522dd1b5ab297fd34accbe135aead2f9eabfe9335c25628d7a591"
    end
    on_intel do
      url "https://github.com/Parslee-ai/car-releases/releases/download/v0.3.1/car-darwin-x64.tar.gz"
      sha256 "a9cfbc2a2ca5115aae2447eddd9c8c2c31a67935f5d62738b619c4dbbe8a8ef7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Parslee-ai/car-releases/releases/download/v0.3.1/car-linux-arm64-gnu.tar.gz"
      sha256 "ef59813b1e2bdc6a3f5aa4a3a07e48531127fca0f6d15794e322e66f2b808bd8"
    end
    on_intel do
      url "https://github.com/Parslee-ai/car-releases/releases/download/v0.3.1/car-linux-x64-gnu.tar.gz"
      sha256 "258428364f89d73012d76c58d19e2fed19b581f2271e98564cc2055b16c5395c"
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
