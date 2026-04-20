class Car < Formula
  desc "Common Agent Runtime — deterministic execution layer for AI agents"
  homepage "https://github.com/Parslee-ai/car-releases"
  version "0.3.2"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/Parslee-ai/car-releases/releases/download/v0.3.2/car-darwin-arm64.tar.gz"
      sha256 "a466fbc290671283b539113482a208d5fba8e924e871ec89bc4902dcd5b259da"
    end
    on_intel do
      url "https://github.com/Parslee-ai/car-releases/releases/download/v0.3.2/car-darwin-x64.tar.gz"
      sha256 "111b12f1c252e620223509fa3924e40fd916eb153c3c41f3772279677fb42ecb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Parslee-ai/car-releases/releases/download/v0.3.2/car-linux-arm64-gnu.tar.gz"
      sha256 "5da274d92a3bc98d0e0a8c4dc8d7b35b194e71cb18612df3e582ee45bc267f09"
    end
    on_intel do
      url "https://github.com/Parslee-ai/car-releases/releases/download/v0.3.2/car-linux-x64-gnu.tar.gz"
      sha256 "e100642af590010bf7169f1f87bf398a04c86ff52fa7afc971f61d418c9f3bab"
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
