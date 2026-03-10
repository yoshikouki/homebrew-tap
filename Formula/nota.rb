class Nota < Formula
  desc "Notion CLI — read, write, and cache your Notion pages"
  homepage "https://github.com/yoshikouki/nota"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yoshikouki/nota/releases/download/v0.3.0/nota-darwin-arm64.tar.gz"
      sha256 "a9fa80c1747eeba5cd00b25114bdadd09df853090686b3f5d6d5cc7c7ea9b9ca"
    end
    on_intel do
      url "https://github.com/yoshikouki/nota/releases/download/v0.3.0/nota-darwin-x64.tar.gz"
      sha256 "e838a51b4e7dc43a82b21c5b7310d0f8021c0084ed7c3cea1e9735f4f3ca1f4d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/yoshikouki/nota/releases/download/v0.3.0/nota-linux-arm64.tar.gz"
      sha256 "b3ff6c409f6b70b5b6a1882bab82d05dd1b1f17677cc9da9f1e1da3d36b4549c"
    end
    on_intel do
      url "https://github.com/yoshikouki/nota/releases/download/v0.3.0/nota-linux-x64.tar.gz"
      sha256 "4df4a30f3feea048ba4bb40be5af20810859fe7fb5ca5414a809a93944f5e19a"
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
