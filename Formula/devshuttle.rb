class Devshuttle < Formula
  desc "Developer-focused SSH/SFTP file transfer CLI for DevBoxes"
  homepage "https://github.com/CreekLou/devshuttle"
  version "0.1.0"

  on_macos do
    on_arm do
      url "https://github.com/CreekLou/devshuttle/releases/download/v0.1.0/devshuttle_v0.1.0_darwin_arm64.tar.gz"
      sha256 "884002f8b1e5a12a2ab0a36ce08448773c753dbc60091f8e52c7d7f69d787bb4"
    end

    on_intel do
      url "https://github.com/CreekLou/devshuttle/releases/download/v0.1.0/devshuttle_v0.1.0_darwin_amd64.tar.gz"
      sha256 "c466d4bfbcbed228d09c2642d82b8880be619be2bae7bb34ea87f7ecdac32537"
    end
  end

  def install
    bin.install buildpath.glob("*/devshuttle").first
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/devshuttle version")
  end
end
