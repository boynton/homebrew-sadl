class Sadl < Formula
  desc "Simple API Description Language (SADL)"
  homepage "https://github.com/boynton/sadl"
  url "https://github.com/boynton/sadl/archive/v1.6.0.tar.gz"
  sha256 "223bebfadb067ec3723156d4e91638af448bcdba70e2c2dfa1840fd8444517c7"
  license "apache-2"
  version "1.6.0"
  
#  depends_on "go" => :build
  def install
    on_macos do
      if Hardware::CPU.arm?      
        url "https://github.com/boynton/sadl/releases/download/v1.6.0/sadl_darwin_arm64.zip"
        sha256 "2daae74b9431809446a203f3f786d32716a220adaa972f994de8b95c2ff50cdc"
      else
        url "https://github.com/boynton/sadl/releases/download/v1.6.0/sadl_darwin_amd64.zip"
        sha256 "ab8489200188922f3458e61471a7668814dd7075a4fcbe30ffb13533b2b90470"
      end
    end
    on_linux do
      system "go", "build"
      bin.install ".gobuild/bin/sadl" => "sadl"
    end

  test do
    system "#{bin}/sadl", "-v"
  end
end
