# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Api < Formula
  desc "A command line tool to work with API Specifications and code generation."
  homepage "https://github.com/boynton/api"
  version "0.4.4"
  license "Apache-2.0"

  depends_on "go"

  on_macos do
    on_intel do
      url "https://github.com/boynton/api/releases/download/v0.4.4/api_darwin_amd64.tar.gz"
      sha256 "f5abaa0e6ce009196ed7dbfa664b9bdeca0e4bc949799dada14db643661ad2e9"

      def install
        bin.install "api"
      end
    end
    on_arm do
      url "https://github.com/boynton/api/releases/download/v0.4.4/api_darwin_arm64.tar.gz"
      sha256 "4f3bc1ed235b17fef1f282b69d14a0a2285151b44248d8a25b5f21b5ada47c6c"

      def install
        bin.install "api"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/boynton/api/releases/download/v0.4.4/api_linux_amd64.tar.gz"
        sha256 "45b19fdddd3c8a4c5e5b7c183eae0813218abad04fdb9a421a8063e621e5ba59"

        def install
          bin.install "api"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/boynton/api/releases/download/v0.4.4/api_linux_arm64.tar.gz"
        sha256 "e80d3a7434bbe980ce586e286e3cc7d0f716e2dc707908776cef36a98816c298"

        def install
          bin.install "api"
        end
      end
    end
  end

  test do
    system "#{bin}/program -v"
  end
end
