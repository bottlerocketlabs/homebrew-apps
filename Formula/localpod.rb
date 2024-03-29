# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Localpod < Formula
  desc "A tool help create local development environments"
  homepage "https://github.com/bottlerocketlabs/localpod"
  version "0.3.1"
  license "MIT"

  depends_on "go"

  on_macos do
    url "https://github.com/bottlerocketlabs/localpod/releases/download/v0.3.1/localpod_0.3.1_Darwin_amd64.tar.gz"
    sha256 "9c38a39eb6ab1cb71dc5dd25fce1a74f943fb92f3e024de62b3c03068155ddf2"

    def install
      bin.install "localpod"
    end

    if Hardware::CPU.arm?
      def caveats
        <<~EOS
          The darwin_arm64 architecture is not supported for the Localpod
          formula at this time. The darwin_amd64 binary may work in compatibility
          mode, but it might not be fully supported.
        EOS
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/bottlerocketlabs/localpod/releases/download/v0.3.1/localpod_0.3.1_Linux_amd64.tar.gz"
      sha256 "636ac0d54c8b3a85f8ac4717161d319b9d8eef7e908a468699981ee3efb83edc"

      def install
        bin.install "localpod"
      end
    end
  end

  test do
    system "#{bin}/localpod -h"
  end
end
