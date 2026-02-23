class Nota < Formula
  desc "Notion CLI — read, write, and cache your Notion pages"
  homepage "https://github.com/yoshikouki/nota"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yoshikouki/nota/releases/download/v0.1.0/nota-darwin-arm64.tar.gz"
      sha256 "a954b1576115f5b71b97248d5a736631b5361cee3af8ede12c9a6093096d0b1c"
    end
    on_intel do
      url "https://github.com/yoshikouki/nota/releases/download/v0.1.0/nota-darwin-x64.tar.gz"
      sha256 "eb5b9e4f83429c26eda1d49448e3776f1fcb9542e01b2aa9d541a33d66022c59"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/yoshikouki/nota/releases/download/v0.1.0/nota-linux-arm64.tar.gz"
      sha256 "1ced995e507069605c5cc9d01ea6b7c17a4de038e33062f73f02b9b1c4ef682f"
    end
    on_intel do
      url "https://github.com/yoshikouki/nota/releases/download/v0.1.0/nota-linux-x64.tar.gz"
      sha256 "79a23daf158d411bdc720fb0dbd3fb1c3cd05ba79d694584ad7fa22fd934e110"
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
