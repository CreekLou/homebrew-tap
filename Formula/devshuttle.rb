class Devshuttle < Formula
  desc "Developer-focused SSH/SFTP file transfer CLI for DevBoxes"
  homepage "https://github.com/CreekLou/devshuttle"
  version "0.1.2"

  on_macos do
    on_arm do
      url "https://github.com/CreekLou/devshuttle/releases/download/v0.1.2/devshuttle_v0.1.2_darwin_arm64.tar.gz"
      sha256 "89571d70b751de9e26b7b7ec8cc0026b198a04bb71d7b6c82e8b0da921109685"
    end

    on_intel do
      url "https://github.com/CreekLou/devshuttle/releases/download/v0.1.2/devshuttle_v0.1.2_darwin_amd64.tar.gz"
      sha256 "6f8454825e82fd8d0544e3b65644d7865d3473e764b2e72373bad8e6e09dfbd1"
    end
  end

  def install
    bin.install "devshuttle"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/devshuttle version")
  end
end
