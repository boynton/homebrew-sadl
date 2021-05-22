# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Smithy < Formula
  desc "A Go-based tool to work with Smithy API Specifications."
  homepage "https://github.com/boynton/smithy"
  version "0.1.0"
  license "Apache-2.0"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/boynton/smithy/releases/download/v0.1.0/smithy_0.1.0_macOS_x86_64.tar.gz"
    sha256 "6fac865d6e56876b8184f91d3aabda8e639dd7814ebf20de85f327508544c63b"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/boynton/smithy/releases/download/v0.1.0/smithy_0.1.0_macOS_arm64.tar.gz"
    sha256 "004eb834bd334bb884c7fccd2b8da741a41be6e84072d340d85b2398774512bf"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/boynton/smithy/releases/download/v0.1.0/smithy_0.1.0_Linux_x86_64.tar.gz"
    sha256 "52e51097c44ed9e58f86004a0e27bb5c55c64a227bb40a9300bb4bc54bd7ce8a"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/boynton/smithy/releases/download/v0.1.0/smithy_0.1.0_Linux_arm64.tar.gz"
    sha256 "a0e47814605b3bd5f01e428e601bad491c81bfd19d0a96beeedb1c4da73d3391"
  end

  depends_on "go"

  def install
    bin.install "smithy"
  end

  test do
    system "#{bin}/program -v"
  end
end
