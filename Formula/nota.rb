class Nota < Formula
  desc "Notion CLI — read, write, and cache your Notion pages"
  homepage "https://github.com/yoshikouki/nota"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yoshikouki/nota/releases/download/v0.2.0/nota-darwin-arm64.tar.gz"
      sha256 "ef89ce3414afea68cd1961c48394c02750ffa169ddcb7f6aa77cd51c9f867905"
    end
    on_intel do
      url "https://github.com/yoshikouki/nota/releases/download/v0.2.0/nota-darwin-x64.tar.gz"
      sha256 "e182a1a838a422472b11f69852703f72d5075c2321134b01a516deb1e37a07cf"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/yoshikouki/nota/releases/download/v0.2.0/nota-linux-arm64.tar.gz"
      sha256 "2635eba167a529e785f99402e31cc33a4bfdc86cb9f44f69136014809851a073"
    end
    on_intel do
      url "https://github.com/yoshikouki/nota/releases/download/v0.2.0/nota-linux-x64.tar.gz"
      sha256 "c2511fce437e8a04c24e589f92faa4b18e7b8bb1beeafc32490952fdce18d51c"
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
