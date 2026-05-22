class Void < Formula
  desc "Ham radio for the internet — terminal-native ephemeral social"
  homepage "https://void-relay.com"
  version "0.1.2"
  license "MIT"

  on_macos do
    on_arm do
      url    "https://github.com/DotComputers/voidtui/releases/download/v0.1.2/void-darwin-arm64.tar.gz"
      sha256 "ee25e2915878956037519a18109f8ed3368c27bd512b51e408777461945a6fba"
    end
    # darwin-x64 (Intel Mac) omitted in v0.1; see workflow build matrix.
  end
  on_linux do
    on_arm do
      url    "https://github.com/DotComputers/voidtui/releases/download/v0.1.2/void-linux-arm64.tar.gz"
      sha256 "185e0a8f6e74b896ce2f97bb19254df5c45f3f82e5089f8439dcbf6830860281"
    end
    on_intel do
      url    "https://github.com/DotComputers/voidtui/releases/download/v0.1.2/void-linux-x64.tar.gz"
      sha256 "cbeeff06afb49151394905efd83e7b8be998a8446ec909762cb2e608fd0b459e"
    end
  end

  def install
    bin.install "void"
  end
end
