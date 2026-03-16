class Nota < Formula
  desc "Notion CLI — read, write, and cache your Notion pages"
  homepage "https://github.com/yoshikouki/nota"
  version "0.3.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yoshikouki/nota/releases/download/v0.3.1/nota-darwin-arm64.tar.gz"
      sha256 "eaeb48d63052cb1d9952f4b921f1e6b601e1ddafd5183eeb605bf5c180315e29"
    end
    on_intel do
      url "https://github.com/yoshikouki/nota/releases/download/v0.3.1/nota-darwin-x64.tar.gz"
      sha256 "59eeda4bbeed084a74c7965b242236fa866e0619d999646af4e7710681b0257c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/yoshikouki/nota/releases/download/v0.3.1/nota-linux-arm64.tar.gz"
      sha256 "a10121770a9ed07bd4ed8e6263037db5759a2b1e2ccba138088ffbefcd4b232b"
    end
    on_intel do
      url "https://github.com/yoshikouki/nota/releases/download/v0.3.1/nota-linux-x64.tar.gz"
      sha256 "b7c4d09cb2948e8fb2bd60fd673f807cffdd27c1f4f86e55c5e7d617aab7f980"
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
