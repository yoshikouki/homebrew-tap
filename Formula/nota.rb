class Nota < Formula
  desc "Notion CLI — read, write, and cache your Notion pages"
  homepage "https://github.com/yoshikouki/nota"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yoshikouki/nota/releases/download/v0.2.0/nota-darwin-arm64.tar.gz"
      sha256 "ee2acc62fcb39ee6ab63115373c68bdb81bdbb6e627a652b2da1959875925912"
    end
    on_intel do
      url "https://github.com/yoshikouki/nota/releases/download/v0.2.0/nota-darwin-x64.tar.gz"
      sha256 "9ec1ff2c1df2a8e1573dafe9c2b3f284efaad3bd015554bcda27380f86fd33f1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/yoshikouki/nota/releases/download/v0.2.0/nota-linux-arm64.tar.gz"
      sha256 "31fe61cd53ec2d1b7333b74b38f3f09934dd3c1858ab3a08925601a5679d2ff3"
    end
    on_intel do
      url "https://github.com/yoshikouki/nota/releases/download/v0.2.0/nota-linux-x64.tar.gz"
      sha256 "b5252d4d093f838664b244a1a3a7280990b32c09f57601fb0f4daae56f39f65d"
    end
  end

  def install
    bin.install "nota"
  end

  def caveats
    <<~EOS
      nota requires a Notion API token:
        export NOTION_TOKEN="secret_..."

      Get a token at: https://www.notion.so/my-integrations
    EOS
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/nota --version")
  end
end
