class Spoolway < Formula
  desc "Descriptive agent workflow builder run by a minimal command-line state machine"
  homepage "https://github.com/marvingygas/spoolway"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/marvingygas/spoolway/releases/download/v0.16.0/spoolway-macos-arm64"
      sha256 "a752e495ac71bcdf72e9c4016b6af2e269ed391daf70f98d8f7d549417358f1a"
    end
    on_intel do
      url "https://github.com/marvingygas/spoolway/releases/download/v0.16.0/spoolway-macos-x64"
      sha256 "043edf656c9eb278543be892ef38be6337772b8d5414682be3260d8034b34471"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/marvingygas/spoolway/releases/download/v0.16.0/spoolway-linux-arm64"
      sha256 "33201319291e24cb678362c8c82141e214d83c84a037c7ffbbf5c9d8376a4684"
    end
    on_intel do
      url "https://github.com/marvingygas/spoolway/releases/download/v0.16.0/spoolway-linux-x64"
      sha256 "25783a4aea03aa346f941be644975b2117ca878ccfd52916ce8fd4d6235a3b54"
    end
  end

  def install
    bin.install Dir["spoolway-*"].first => "spoolway"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/spoolway --version")
  end
end
