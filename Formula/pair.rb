# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Pair < Formula
  desc "A tool for terminal based pair programming"
  homepage "https://github.com/bottlerocketlabs/pair"
  version "0.1.3"
  license "MIT"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/bottlerocketlabs/pair/releases/download/v0.1.3/pair_0.1.3_Darwin_amd64.tar.gz"
    sha256 "24312963fbe964b77504d57883732f5aa78737ef473ddd1c8bf17a2cd2b834d5"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/bottlerocketlabs/pair/releases/download/v0.1.3/pair_0.1.3_Linux_amd64.tar.gz"
    sha256 "7f7d4b3d1b80302bc0a335ad906223325cd56522142b047b2b2fbc80aa3fcf05"
  end

  depends_on "go"

  def install
    bin.install "pair"
    bin.install "pair-server"
    bin.install "pair-server-simple"
  end

  test do
    system "#{bin}/pair -version"
  end
end
