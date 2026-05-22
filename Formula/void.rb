class Void < Formula
  desc "Ham radio for the internet — terminal-native ephemeral social"
  homepage "https://void-relay.com"
  version "0.1.3"
  license "MIT"

  on_macos do
    on_arm do
      url    "https://github.com/DotComputers/voidtui/releases/download/v0.1.3/void-darwin-arm64.tar.gz"
      sha256 "c489ad51d66ce4e0b5358fa9d7ec417ee888d5d13a783902a3e24248805e336f"
    end
    # darwin-x64 (Intel Mac) omitted in v0.1; see workflow build matrix.
  end
  on_linux do
    on_arm do
      url    "https://github.com/DotComputers/voidtui/releases/download/v0.1.3/void-linux-arm64.tar.gz"
      sha256 "409ed6f3a04f1e60451abc2ba053bd31d2e24d51f57e20c231d7b0f7deb9fedc"
    end
    on_intel do
      url    "https://github.com/DotComputers/voidtui/releases/download/v0.1.3/void-linux-x64.tar.gz"
      sha256 "8a030637531e2f2428aba9bb133d72b8322de0c7b3ba920fe55569a27c083e8c"
    end
  end

  def install
    bin.install "void"
  end
end
