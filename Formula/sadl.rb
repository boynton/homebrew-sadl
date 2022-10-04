# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Sadl < Formula
  desc "SADL is a general high level API description language for http-based services."
  homepage "https://github.com/boynton/sadl"
  version "1.8.2"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/boynton/sadl/releases/download/v1.8.2/sadl_1.8.2_macOS_arm64.tar.gz"
      sha256 "3d01ec1b08fd1580d066bb855009eec0a00e7fea35a3e4a463ecf95cea608705"

      def install
        bin.install "sadl"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/boynton/sadl/releases/download/v1.8.2/sadl_1.8.2_macOS_x86_64.tar.gz"
      sha256 "ae25fcf361d7b10c4aab2d314aa99f16f93af1594cfbe4be2d70eb81f7d385fa"

      def install
        bin.install "sadl"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/boynton/sadl/releases/download/v1.8.2/sadl_1.8.2_Linux_arm64.tar.gz"
      sha256 "21cf91bf1daeb453b257f47b896dc5fe0c6960d629cf03882c0f7d6a956be269"

      def install
        bin.install "sadl"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/boynton/sadl/releases/download/v1.8.2/sadl_1.8.2_Linux_x86_64.tar.gz"
      sha256 "a81f101ec8237e2442510ab97e24fcc501c7dea5e80fbd0e39c1c8c45d0c5b27"

      def install
        bin.install "sadl"
      end
    end
  end

  depends_on "go"

  test do
    system "#{bin}/program -v"
  end
end
