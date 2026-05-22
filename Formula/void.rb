class Void < Formula
  desc "Ham radio for the internet — terminal-native ephemeral social"
  homepage "https://void-relay.com"
  version "0.1.5"
  license "MIT"

  on_macos do
    on_arm do
      url    "https://github.com/DotComputers/voidtui/releases/download/v0.1.5/void-darwin-arm64.tar.gz"
      sha256 "bbb904f8788e7cb2b4f98ff1f09cb1ca921e07483794b97efa0af22a5b3c0eb2"
    end
    # darwin-x64 (Intel Mac) omitted in v0.1; see workflow build matrix.
  end
  on_linux do
    on_arm do
      url    "https://github.com/DotComputers/voidtui/releases/download/v0.1.5/void-linux-arm64.tar.gz"
      sha256 "dafc0ac2f73643aa4f1f22108c977fcd5ac57294ac180d08648951c88e6149d4"
    end
    on_intel do
      url    "https://github.com/DotComputers/voidtui/releases/download/v0.1.5/void-linux-x64.tar.gz"
      sha256 "20e40567aa26b5fead9db46ac8bccc1b6cce44f72bddee460371ec91dbe25f1e"
    end
  end

  def install
    bin.install "void"
  end
end
