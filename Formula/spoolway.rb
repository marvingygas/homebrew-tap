class Spoolway < Formula
  desc "Descriptive agent workflow builder run by a minimal command-line state machine"
  homepage "https://github.com/marvingygas/spoolway"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/marvingygas/spoolway/releases/download/v0.18.0/spoolway-macos-arm64"
      sha256 "0fb36f5abad493737038b434f7a0370295eba57669523a23e3426200c0828905"
    end
    on_intel do
      url "https://github.com/marvingygas/spoolway/releases/download/v0.18.0/spoolway-macos-x64"
      sha256 "ee91bcd01124c75e41ac4bcb11eecd846ca9dd19449e7b574a024e31e7bf2571"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/marvingygas/spoolway/releases/download/v0.18.0/spoolway-linux-arm64"
      sha256 "fb62247cd0046c39116eca2f55b410c8cae7da726b9f33733c9ae4b950dd02ad"
    end
    on_intel do
      url "https://github.com/marvingygas/spoolway/releases/download/v0.18.0/spoolway-linux-x64"
      sha256 "59f7b2a1335dc954f124d461026f92de613452e3aec6aa9a002ea79e0cee2f72"
    end
  end

  def install
    bin.install Dir["spoolway-*"].first => "spoolway"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/spoolway --version")
  end
end
