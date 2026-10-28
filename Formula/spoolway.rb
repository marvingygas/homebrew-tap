class Spoolway < Formula
  desc "Descriptive agent workflow builder run by a minimal command-line state machine"
  homepage "https://github.com/marvingygas/spoolway"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/marvingygas/spoolway/releases/download/v0.17.0/spoolway-macos-arm64"
      sha256 "7d819a50b1c792b38f619b43341df2e43244b780dd85717de030a31cffca6941"
    end
    on_intel do
      url "https://github.com/marvingygas/spoolway/releases/download/v0.17.0/spoolway-macos-x64"
      sha256 "850b1bb5b485c0ef9b23d0ed823886e20915db77f133036f9d1f1a487f59eaa9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/marvingygas/spoolway/releases/download/v0.17.0/spoolway-linux-arm64"
      sha256 "a593492c0a5ebea3475bb4074f768f5e68f4dcb34e03b5da56421ef3851d285a"
    end
    on_intel do
      url "https://github.com/marvingygas/spoolway/releases/download/v0.17.0/spoolway-linux-x64"
      sha256 "831133913b82f9ee145940def578d724ef4ed838bf03dd8ae1b051cfa58fa33d"
    end
  end

  def install
    bin.install Dir["spoolway-*"].first => "spoolway"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/spoolway --version")
  end
end
