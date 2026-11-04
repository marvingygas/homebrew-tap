class Spoolway < Formula
  desc "Descriptive agent workflow builder run by a minimal command-line state machine"
  homepage "https://github.com/marvingygas/spoolway"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/marvingygas/spoolway/releases/download/v0.18.1/spoolway-macos-arm64"
      sha256 "d5f5d2508d95d759bf4676f3c3df250b07db997f620172e606f23676005ff97b"
    end
    on_intel do
      url "https://github.com/marvingygas/spoolway/releases/download/v0.18.1/spoolway-macos-x64"
      sha256 "2ec88e0bf1e9e5a7d66f5a65b508d857558987d084d91cf60a8137413032771f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/marvingygas/spoolway/releases/download/v0.18.1/spoolway-linux-arm64"
      sha256 "f84b3a1171e60eb3033291c3b07cba3f1bc716f37962662032bd1ef0fc95514f"
    end
    on_intel do
      url "https://github.com/marvingygas/spoolway/releases/download/v0.18.1/spoolway-linux-x64"
      sha256 "fcc0289b0c84e1dd8288e7070ca65f15362ab2988ccb7e68946bbb737a4501ba"
    end
  end

  def install
    bin.install Dir["spoolway-*"].first => "spoolway"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/spoolway --version")
  end
end
