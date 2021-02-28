# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Sadl < Formula
  desc "SADL is a general high level API description language for http-based services."
  homepage "https://github.com/boynton/sadl"
  version "1.6.3"
  license "Apache-2.0"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/boynton/sadl/releases/download/v1.6.3/sadl_1.6.3_macOS_x86_64.tar.gz"
    sha256 "cd716ebe7fb406ef6b4486d8cefbcee7df82d109caa92007e69503595215a150"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/boynton/sadl/releases/download/v1.6.3/sadl_1.6.3_macOS_arm64.tar.gz"
    sha256 "b0bfbe7dc0d616741de502a4d1662967e8726b08136b95c67996431e64c8ab43"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/boynton/sadl/releases/download/v1.6.3/sadl_1.6.3_Linux_x86_64.tar.gz"
    sha256 "084fd36382684f102bfc90e2cc0e4defc110f8ba44fa5cf18fc4ce8cbc1539fd"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/boynton/sadl/releases/download/v1.6.3/sadl_1.6.3_Linux_arm64.tar.gz"
    sha256 "9138f8ad18a3202aeddc697f12ea3a862b7b02e7d04a5ce59d1f93ecec431f46"
  end

  depends_on "go"

  def install
    bin.install "sadl"
  end
end
