class Spoolway < Formula
  desc "Descriptive agent workflow builder run by a minimal command-line state machine"
  homepage "https://github.com/marvingygas/spoolway"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/marvingygas/spoolway/releases/download/v0.15.0/spoolway-macos-arm64"
      sha256 "5b5efb44cadc5e33f4f50add979437aec76e14f9639570714a7d2c84494eb918"
    end
    on_intel do
      url "https://github.com/marvingygas/spoolway/releases/download/v0.15.0/spoolway-macos-x64"
      sha256 "04dc0b4434aaf5633db86cc312cf5358494cb74158b76c5e21abc5845a96621c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/marvingygas/spoolway/releases/download/v0.15.0/spoolway-linux-arm64"
      sha256 "6059018cc09ea8501de1d80ce8e4a15f6441fbec7dbe04f0a4514e14abbc23f8"
    end
    on_intel do
      url "https://github.com/marvingygas/spoolway/releases/download/v0.15.0/spoolway-linux-x64"
      sha256 "1ac805a666b79b2b4d8dcefedd22928a5d7411b187f71f93e263f7f0c341b651"
    end
  end

  def install
    bin.install Dir["spoolway-*"].first => "spoolway"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/spoolway --version")
  end
end
