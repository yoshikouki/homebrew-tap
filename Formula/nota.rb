class Nota < Formula
  desc "Notion CLI — read, write, and cache your Notion pages"
  homepage "https://github.com/yoshikouki/nota"
  version "0.3.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yoshikouki/nota/releases/download/v0.3.1/nota-darwin-arm64.tar.gz"
      sha256 "9e00d553f72f472370dd023d8b37284433754dcc320a64253a1931f079aa5a1f"
    end
    on_intel do
      url "https://github.com/yoshikouki/nota/releases/download/v0.3.1/nota-darwin-x64.tar.gz"
      sha256 "72c041c50b3dd126dc999434c42a7392edeeb0b00cdd4c31fcf8769acefff802"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/yoshikouki/nota/releases/download/v0.3.1/nota-linux-arm64.tar.gz"
      sha256 "c780d91f42994e408922c72453384468f4ab7a7b9201c1eeffaa348e86bf6c0c"
    end
    on_intel do
      url "https://github.com/yoshikouki/nota/releases/download/v0.3.1/nota-linux-x64.tar.gz"
      sha256 "fee07ea4a6ef9cce1f2646e7f18c9f029ac05127981e74ee1115515484f43fe4"
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
