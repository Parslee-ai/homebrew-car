class Car < Formula
  desc "Common Agent Runtime — deterministic execution layer for AI agents"
  homepage "https://github.com/Parslee-ai/car-releases"
  version "0.4.0"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/Parslee-ai/car-releases/releases/download/v0.4.0/car-darwin-arm64.tar.gz"
      sha256 "039b50ffca32425f46988d331e59f8f4ee8a922caa0e6c8a32af13005ba67d56"
    end
    on_intel do
      url "https://github.com/Parslee-ai/car-releases/releases/download/v0.4.0/car-darwin-x64.tar.gz"
      sha256 "2b94a3344e9c5b5de5cae377a81e057f8a7a48bb0511db4335f152aa7c2f258c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Parslee-ai/car-releases/releases/download/v0.4.0/car-linux-x64-gnu.tar.gz"
      sha256 "98dfce6cec1c88949250bb5f6421469f72f3949f66e12da578d7ffa085a33848"
    end
    # Linux aarch64 deferred to v0.4.1 (libdbus-sys cross-compile pending).
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
