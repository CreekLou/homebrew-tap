class Devshuttle < Formula
  desc "Developer-focused SSH/SFTP file transfer CLI for DevBoxes"
  homepage "https://github.com/CreekLou/devshuttle"
  version "0.1.1"

  on_macos do
    on_arm do
      url "https://github.com/CreekLou/devshuttle/releases/download/v0.1.1/devshuttle_v0.1.1_darwin_arm64.tar.gz"
      sha256 "b88e8317f35f5a9f2a63ef9b04811502bc041345fb26ea8d37e17d60e5f8668d"
    end

    on_intel do
      url "https://github.com/CreekLou/devshuttle/releases/download/v0.1.1/devshuttle_v0.1.1_darwin_amd64.tar.gz"
      sha256 "fa5e754fcf934970c4ee9dac247de631e1e54b2165ac94abb198b52807d0562e"
    end
  end

  def install
    bin.install "devshuttle"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/devshuttle version")
  end
end
