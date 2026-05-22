class Void < Formula
  desc "Ham radio for the internet — terminal-native ephemeral social"
  homepage "https://void-relay.com"
  version "0.1.4"
  license "MIT"

  on_macos do
    on_arm do
      url    "https://github.com/DotComputers/voidtui/releases/download/v0.1.4/void-darwin-arm64.tar.gz"
      sha256 "0b7b642f1993d01b21a0c05a1023b876825e0213c0a4c23812bf0f239e463765"
    end
    # darwin-x64 (Intel Mac) omitted in v0.1; see workflow build matrix.
  end
  on_linux do
    on_arm do
      url    "https://github.com/DotComputers/voidtui/releases/download/v0.1.4/void-linux-arm64.tar.gz"
      sha256 "4b8ddbd3f1b3e1759fe4385a269e938fa5af6d133ecdd8a639763295f23b514f"
    end
    on_intel do
      url    "https://github.com/DotComputers/voidtui/releases/download/v0.1.4/void-linux-x64.tar.gz"
      sha256 "d2d8a33f70a565ae6a8010b5bd46c2b1769e4b4e9cd414d5ca9bbf58e90fdd30"
    end
  end

  def install
    bin.install "void"
  end
end
